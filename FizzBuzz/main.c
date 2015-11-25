//
//  main.c
//  FizzBuzz
//
//  Created by Franck Horlaville on 18/07/2015.
//  Copyright (c) 2015 TAM Software. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "main.h"

int main(int argc, const char * argv[]) {

    char i;
    char result[strlen("FizzBuzz")+1];
    
    
    for (i=1; i<=100; i++) {
        fizzBuzz(i, result);
        printf("%s\n",result);
    }
    
    return(EXIT_SUCCESS);
}

void fizzBuzz(char num, char *result) {

    result[0]=0;

    if(num % 3 == 0) result=strcpy(result,"Fizz");
    if(num % 5 == 0) result=strcat(result,"Buzz");
    
    if (!*result) sprintf(result, "%d",num);
}
