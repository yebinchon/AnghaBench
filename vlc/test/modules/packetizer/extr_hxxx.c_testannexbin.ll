; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_hxxx.c_testannexbin.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_hxxx.c_testannexbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64 }

@.str = private unnamed_addr constant [16 x i8] c"INPUT SET    : \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%.2x, \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"DUMP prefix %d: \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"COMPARE SET    : \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"** No output **\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32**, i64*)* @testannexbin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testannexbin(i32* %0, i64 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %25, %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %9, align 8
  br label %15

28:                                               ; preds = %15
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %129, %28
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %33, label %132

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = call %struct.TYPE_6__* @block_Alloc(i64 %34)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %11, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i32* %38, i32* %39, i64 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 1, %43
  %45 = call %struct.TYPE_6__* @hxxx_AnnexB_to_xVC(%struct.TYPE_6__* %42, i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 1, %46
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %125

51:                                               ; preds = %33
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %52

69:                                               ; preds = %52
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %90, %69
  %73 = load i64, i64* %13, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load i32**, i32*** %7, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %80
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %72

93:                                               ; preds = %72
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %97, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32**, i32*** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @memcmp(i32* %108, i32* %113, i64 %118)
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %124 = call i32 @block_Release(%struct.TYPE_6__* %123)
  br label %128

125:                                              ; preds = %33
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %127 = call i32 @assert(i32 0)
  br label %128

128:                                              ; preds = %125, %93
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %30

132:                                              ; preds = %30
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_6__* @hxxx_AnnexB_to_xVC(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
