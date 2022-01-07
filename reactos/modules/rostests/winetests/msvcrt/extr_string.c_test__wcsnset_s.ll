; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__wcsnset_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__wcsnset_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__wcsnset_s.text = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"r = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"text[0] = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"text[1] = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"text[2] = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__wcsnset_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__wcsnset_s() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca i32, align 4
  %3 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test__wcsnset_s.text, i32 0, i32 0), i64 5, i1 false)
  %4 = call i32 @p__wcsnset_s(i8* null, i32 0, i8 signext 97, i32 0)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %2, align 4
  %9 = trunc i32 %8 to i8
  %10 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %9)
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %12 = call i32 @p__wcsnset_s(i8* %11, i32 0, i8 signext 97, i32 1)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %2, align 4
  %18 = trunc i32 %17 to i8
  %19 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %18)
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 116
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 signext %26)
  %28 = call i32 @p__wcsnset_s(i8* null, i32 2, i8 signext 97, i32 1)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %2, align 4
  %34 = trunc i32 %33 to i8
  %35 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %34)
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %37 = call i32 @p__wcsnset_s(i8* %36, i32 2, i8 signext 97, i32 3)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %2, align 4
  %43 = trunc i32 %42 to i8
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %43)
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 signext %51)
  %53 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 101
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8 signext %59)
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  store i8 116, i8* %61, align 1
  %62 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %63 = call i32 @p__wcsnset_s(i8* %62, i32 5, i8 signext 97, i32 1)
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %2, align 4
  %68 = trunc i32 %67 to i8
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %68)
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 97
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 signext %76)
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 101
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8 signext %84)
  %86 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 1
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %88 = call i32 @p__wcsnset_s(i8* %87, i32 5, i8 signext 98, i32 3)
  store i32 %88, i32* %2, align 4
  %89 = load i32, i32* %2, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %2, align 4
  %93 = trunc i32 %92 to i8
  %94 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %93)
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 98
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 signext %101)
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8 signext %109)
  %111 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 120
  %115 = zext i1 %114 to i32
  %116 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8 signext %117)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p__wcsnset_s(i8*, i32, i8 signext, i32) #2

declare dso_local i32 @ok(i32, i8*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
