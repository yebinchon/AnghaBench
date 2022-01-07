; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_base32hexmem.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_base32hexmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CO======\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CPNG====\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CPNMU===\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"foob\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"CPNMUOG=\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fooba\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"CPNMUOJ1\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"CPNMUOJ1E8======\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"CO\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"CPNG\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"CPNMU\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"CPNMUOG\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"CPNMUOJ1E8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_base32hexmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_base32hexmem() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @STRLEN(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %3 = call i8* @base32hexmem(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %2, i32 1)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @assert_se(i8* %4)
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @streq(i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @assert_se(i8* %7)
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @free(i8* %9)
  %11 = call i32 @STRLEN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i8* @base32hexmem(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 1)
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @assert_se(i8* %13)
  %15 = load i8*, i8** %1, align 8
  %16 = call i8* @streq(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @assert_se(i8* %16)
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @free(i8* %18)
  %20 = call i32 @STRLEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i8* @base32hexmem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 1)
  store i8* %21, i8** %1, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @assert_se(i8* %22)
  %24 = load i8*, i8** %1, align 8
  %25 = call i8* @streq(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @assert_se(i8* %25)
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @free(i8* %27)
  %29 = call i32 @STRLEN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i8* @base32hexmem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %29, i32 1)
  store i8* %30, i8** %1, align 8
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 @assert_se(i8* %31)
  %33 = load i8*, i8** %1, align 8
  %34 = call i8* @streq(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %35 = call i32 @assert_se(i8* %34)
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 @free(i8* %36)
  %38 = call i32 @STRLEN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %39 = call i8* @base32hexmem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %38, i32 1)
  store i8* %39, i8** %1, align 8
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @assert_se(i8* %40)
  %42 = load i8*, i8** %1, align 8
  %43 = call i8* @streq(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %44 = call i32 @assert_se(i8* %43)
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 @free(i8* %45)
  %47 = call i32 @STRLEN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %48 = call i8* @base32hexmem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %47, i32 1)
  store i8* %48, i8** %1, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @assert_se(i8* %49)
  %51 = load i8*, i8** %1, align 8
  %52 = call i8* @streq(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %53 = call i32 @assert_se(i8* %52)
  %54 = load i8*, i8** %1, align 8
  %55 = call i32 @free(i8* %54)
  %56 = call i32 @STRLEN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %57 = call i8* @base32hexmem(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %56, i32 1)
  store i8* %57, i8** %1, align 8
  %58 = load i8*, i8** %1, align 8
  %59 = call i32 @assert_se(i8* %58)
  %60 = load i8*, i8** %1, align 8
  %61 = call i8* @streq(i8* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %62 = call i32 @assert_se(i8* %61)
  %63 = load i8*, i8** %1, align 8
  %64 = call i32 @free(i8* %63)
  %65 = call i32 @STRLEN(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %66 = call i8* @base32hexmem(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %65, i32 0)
  store i8* %66, i8** %1, align 8
  %67 = load i8*, i8** %1, align 8
  %68 = call i32 @assert_se(i8* %67)
  %69 = load i8*, i8** %1, align 8
  %70 = call i8* @streq(i8* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @assert_se(i8* %70)
  %72 = load i8*, i8** %1, align 8
  %73 = call i32 @free(i8* %72)
  %74 = call i32 @STRLEN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i8* @base32hexmem(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 0)
  store i8* %75, i8** %1, align 8
  %76 = load i8*, i8** %1, align 8
  %77 = call i32 @assert_se(i8* %76)
  %78 = load i8*, i8** %1, align 8
  %79 = call i8* @streq(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %80 = call i32 @assert_se(i8* %79)
  %81 = load i8*, i8** %1, align 8
  %82 = call i32 @free(i8* %81)
  %83 = call i32 @STRLEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i8* @base32hexmem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 0)
  store i8* %84, i8** %1, align 8
  %85 = load i8*, i8** %1, align 8
  %86 = call i32 @assert_se(i8* %85)
  %87 = load i8*, i8** %1, align 8
  %88 = call i8* @streq(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %89 = call i32 @assert_se(i8* %88)
  %90 = load i8*, i8** %1, align 8
  %91 = call i32 @free(i8* %90)
  %92 = call i32 @STRLEN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i8* @base32hexmem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 0)
  store i8* %93, i8** %1, align 8
  %94 = load i8*, i8** %1, align 8
  %95 = call i32 @assert_se(i8* %94)
  %96 = load i8*, i8** %1, align 8
  %97 = call i8* @streq(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %98 = call i32 @assert_se(i8* %97)
  %99 = load i8*, i8** %1, align 8
  %100 = call i32 @free(i8* %99)
  %101 = call i32 @STRLEN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %102 = call i8* @base32hexmem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %101, i32 0)
  store i8* %102, i8** %1, align 8
  %103 = load i8*, i8** %1, align 8
  %104 = call i32 @assert_se(i8* %103)
  %105 = load i8*, i8** %1, align 8
  %106 = call i8* @streq(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %107 = call i32 @assert_se(i8* %106)
  %108 = load i8*, i8** %1, align 8
  %109 = call i32 @free(i8* %108)
  %110 = call i32 @STRLEN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %111 = call i8* @base32hexmem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %110, i32 0)
  store i8* %111, i8** %1, align 8
  %112 = load i8*, i8** %1, align 8
  %113 = call i32 @assert_se(i8* %112)
  %114 = load i8*, i8** %1, align 8
  %115 = call i8* @streq(i8* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %116 = call i32 @assert_se(i8* %115)
  %117 = load i8*, i8** %1, align 8
  %118 = call i32 @free(i8* %117)
  %119 = call i32 @STRLEN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %120 = call i8* @base32hexmem(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %119, i32 0)
  store i8* %120, i8** %1, align 8
  %121 = load i8*, i8** %1, align 8
  %122 = call i32 @assert_se(i8* %121)
  %123 = load i8*, i8** %1, align 8
  %124 = call i8* @streq(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %125 = call i32 @assert_se(i8* %124)
  %126 = load i8*, i8** %1, align 8
  %127 = call i32 @free(i8* %126)
  ret void
}

declare dso_local i8* @base32hexmem(i8*, i32, i32) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i8* @streq(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
