; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Usage : %s [options] XMLfiles ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\09Parse the XML files\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\09--version : display the version of the XML library used\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\09--recover : output what was parsable on broken XML documents\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\09--huge : remove any internal arbitrary parser limits\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\09--noent : substitute entity references by their value\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"\09--noenc : ignore any encoding specified inside the document\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\09--noout : don't output the result tree\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"\09--path 'paths': provide a set of paths for resources\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"\09--load-trace : print trace of all external entities loaded\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"\09--nonet : refuse to fetch DTDs or entities over network\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\09--nocompact : do not generate compact text nodes\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\09--htmlout : output results as HTML\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\09--nowrap : do not put HTML doc wrapper\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\09--timing : print some timings\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"\09--output file or -o file: save to a given file\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"\09--repeat : repeat 100 times, for timing or profiling\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\09--insert : ad-hoc test for valid insertions\0A\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"\09--maxmem nbbytes : limits memory allocation to nbbytes bytes\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"\09--nowarning : do not emit warnings from parser/validator\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"\09--noblanks : drop (ignorable?) blanks spaces\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"\09--nocdata : replace cdata section with text nodes\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"\09--c14n : save in W3C canonical format v1.0 (with comments)\0A\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"\09--c14n11 : save in W3C canonical format v1.1 (with comments)\0A\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"\09--exc-c14n : save in W3C exclusive canonical format (with comments)\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"\09--nsclean : remove redundant namespace declarations\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\09--testIO : test user I/O support\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"\09--auto : generate a small doc on the fly\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"\09--loaddtd : fetch external DTD\0A\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"\09--dtdattr : loaddtd + populate the tree with inherited attributes \0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"\09--chkregister : verify the node registration code\0A\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"\09--sax: do not build a tree but work just at the SAX level\0A\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"\09--oldxml10: use XML-1.0 parsing rules before the 5th edition\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"\0ALibxml project home page: http://xmlsoft.org/\0A\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"To report bugs or get some help check: http://xmlsoft.org/bugs.html\0A\00", align 1
@XML_XML_DEFAULT_CATALOG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0))
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i64 0, i64 0))
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.31, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0))
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
