#include <stdio.h>

	extern float _square (float a);

	float square (float a);
	void flush(void);

	int main()
	{
		float a;
		int b;
		printf("Podaj x:\n");
		while(!scanf("%f",&a)){
			printf("Zla wartosc\n");
			printf("Podaj x:\n");
			flush();
		}
		printf("Podaj dokladnosc:\n");
		while(!scanf("%i",&b)){
			printf("Zla wartosc\n");
			printf("Podaj dokladnosc:\n");
			flush();
		}
		printf("Wynik: \n");
		printf("%.*f\n", b, square(a));
		return 0;
	}
	void flush(){
		char c;
		while((c=getchar())!='\n');
		return;
	}
