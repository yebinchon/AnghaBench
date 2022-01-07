; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_env.c_testSetHelper.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_env.c_testSetHelper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"Setting var %s=%s (%x/%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot get value written to environment\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Couldn't find variable, but didn't delete it. val = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Wrong ret %u for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i32)* @testSetHelper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSetHelper(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i32], align 16
  %12 = alloca [256 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = call i32 @pRtlMultiByteToUnicodeN(i32* %31, i32 1024, i32* null, i8* %32, i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %5
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32* %52, i32** %53, align 8
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %57, 1
  %59 = call i32 @pRtlMultiByteToUnicodeN(i32* %54, i32 1024, i32* null, i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %39, %5
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %66

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %64
  %67 = phi %struct.TYPE_6__* [ %15, %64 ], [ null, %65 ]
  %68 = call i32 @pRtlSetEnvironmentVariable(i32* %61, %struct.TYPE_6__* %14, %struct.TYPE_6__* %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br label %81

81:                                               ; preds = %79, %66
  %82 = phi i1 [ true, %66 ], [ %80, %79 ]
  %83 = zext i1 %82 to i32
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %84, i8* %85, i32 %86, i32 %87)
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 129
  br i1 %90, label %91, label %127

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 1024, i32* %93, align 4
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32* %94, i32** %95, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pRtlQueryEnvironmentVariable_U(i32 %97, %struct.TYPE_6__* %14, %struct.TYPE_6__* %15)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  switch i32 %99, label %122 [
    i32 129, label %100
    i32 128, label %107
  ]

100:                                              ; preds = %91
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %102 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %103 = call i32 @lstrcmpW(i32* %101, i32* %102)
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %126

107:                                              ; preds = %91
  %108 = load i8*, i8** %8, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** %7, align 8
  %112 = call i32* @strchr(i8* %111, i8 signext 61)
  %113 = icmp ne i32* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @broken(i32 %114)
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %110, %107
  %118 = phi i1 [ true, %107 ], [ %116, %110 ]
  %119 = zext i1 %118 to i32
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  br label %126

122:                                              ; preds = %91
  %123 = load i32, i32* %16, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %122, %117, %100
  br label %127

127:                                              ; preds = %126, %81
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pRtlMultiByteToUnicodeN(i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @pRtlSetEnvironmentVariable(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pRtlQueryEnvironmentVariable_U(i32, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @broken(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
