; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/netshell/extr_NcIsValidConnectionName.c_test_BadLetters.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/netshell/extr_NcIsValidConnectionName.c_test_BadLetters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i32] [i32 92, i32 47, i32 58, i32 9, i32 42, i32 63, i32 32, i32 60, i32 62, i32 124, i32 34, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Expected %s (%i) to fail.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Expected %s (%i) to succeed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BadLetters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BadLetters() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [3 x i32], align 4
  %3 = alloca i32, align 4
  %4 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 12, i1 false)
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %120, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 65535
  br i1 %7, label %8, label %123

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %14 = call i32* @wcspbrk(i32* %13, i8* bitcast ([12 x i32]* @.str to i8*))
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %74

16:                                               ; preds = %8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %18 = call i64 @pNcIsValidConnectionName(i32* %17)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %24 = call i32 @wine_dbgstr_w(i32* %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %30 = call i64 @pNcIsValidConnectionName(i32* %29)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @FALSE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %36 = call i32 @wine_dbgstr_w(i32* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 32, i32* %39, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %41 = call i64 @pNcIsValidConnectionName(i32* %40)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %47 = call i32 @wine_dbgstr_w(i32* %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 97, i32* %50, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %52 = call i64 @pNcIsValidConnectionName(i32* %51)
  store i64 %52, i64* %1, align 8
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %64

55:                                               ; preds = %16
  %56 = load i64, i64* %1, align 8
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %61 = call i32 @wine_dbgstr_w(i32* %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  br label %73

64:                                               ; preds = %16
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* @FALSE, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %70 = call i32 @wine_dbgstr_w(i32* %69)
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %55
  br label %119

74:                                               ; preds = %8
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %76 = call i64 @pNcIsValidConnectionName(i32* %75)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = load i64, i64* @TRUE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %82 = call i32 @wine_dbgstr_w(i32* %81)
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %88 = call i64 @pNcIsValidConnectionName(i32* %87)
  store i64 %88, i64* %1, align 8
  %89 = load i64, i64* %1, align 8
  %90 = load i64, i64* @TRUE, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %94 = call i32 @wine_dbgstr_w(i32* %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95)
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 97, i32* %97, align 4
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %99 = call i64 @pNcIsValidConnectionName(i32* %98)
  store i64 %99, i64* %1, align 8
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* @TRUE, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %105 = call i32 @wine_dbgstr_w(i32* %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106)
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 32, i32* %108, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %110 = call i64 @pNcIsValidConnectionName(i32* %109)
  store i64 %110, i64* %1, align 8
  %111 = load i64, i64* %1, align 8
  %112 = load i64, i64* @TRUE, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %116 = call i32 @wine_dbgstr_w(i32* %115)
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %74, %73
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %5

123:                                              ; preds = %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @wcspbrk(i32*, i8*) #2

declare dso_local i64 @pNcIsValidConnectionName(i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
