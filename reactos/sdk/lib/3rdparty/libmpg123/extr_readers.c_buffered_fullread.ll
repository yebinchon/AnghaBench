; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_buffered_fullread.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_buffered_fullread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, i8*, i32)*, %struct.bufferchain }
%struct.bufferchain = type { i64, i64 }

@NOQUIET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"buffer reading\00", align 1
@READER_ERROR = common dso_local global i64 0, align 8
@VERBOSE3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"buffered_fullread: buffering %li bytes from stream (if > 0)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to add to chain, return: %i\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Note: Input data end.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"wanted %li, got %li\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gotcount != count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*, i64)* @buffered_fullread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buffered_fullread(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bufferchain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.bufferchain* %16, %struct.bufferchain** %8, align 8
  %17 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %18 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %21 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %112

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %29 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %32 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = sub nsw i64 %27, %34
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %92, %26
  %37 = load i64, i64* %11, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %93

39:                                               ; preds = %36
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_6__*, i8*, i32)*, i64 (%struct.TYPE_6__*, i8*, i32)** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %46 = call i64 %43(%struct.TYPE_6__* %44, i8* %45, i32 4096)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i64, i64* @NOQUIET, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i64, i64* @READER_ERROR, align 8
  store i64 %55, i64* %4, align 8
  br label %136

56:                                               ; preds = %39
  %57 = load i64, i64* @VERBOSE3, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @debug1(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* %13, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @bc_add(%struct.bufferchain* %66, i8* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i64, i64* @NOQUIET, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @error1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* @READER_ERROR, align 8
  store i64 %78, i64* %4, align 8
  br label %136

79:                                               ; preds = %65, %62
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp ult i64 %83, 4096
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i64, i64* @VERBOSE3, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  br label %93

92:                                               ; preds = %79
  br label %36

93:                                               ; preds = %91, %36
  %94 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %95 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %98 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = load i64, i64* %7, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %93
  %104 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %105 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %108 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  store i64 %110, i64* %7, align 8
  br label %111

111:                                              ; preds = %103, %93
  br label %112

112:                                              ; preds = %111, %3
  %113 = load %struct.bufferchain*, %struct.bufferchain** %8, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @bc_give(%struct.bufferchain* %113, i8* %114, i64 %115)
  store i64 %116, i64* %9, align 8
  %117 = load i64, i64* @VERBOSE3, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @debug2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %120, i64 %121)
  br label %123

123:                                              ; preds = %119, %112
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i64, i64* @NOQUIET, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i64, i64* @READER_ERROR, align 8
  store i64 %133, i64* %4, align 8
  br label %136

134:                                              ; preds = %123
  %135 = load i64, i64* %9, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %134, %132, %77, %54
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @debug1(i8*, i64) #1

declare dso_local i32 @bc_add(%struct.bufferchain*, i8*, i64) #1

declare dso_local i32 @error1(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @bc_give(%struct.bufferchain*, i8*, i64) #1

declare dso_local i32 @debug2(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
