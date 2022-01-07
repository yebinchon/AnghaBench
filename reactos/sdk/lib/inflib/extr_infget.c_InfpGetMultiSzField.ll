; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpGetMultiSzField.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpGetMultiSzField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@INF_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@INF_STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpGetMultiSzField(i32* %0, i64 %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %5
  %24 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %25, i32* %6, align 4
  br label %116

26:                                               ; preds = %20
  %27 = load i64*, i64** %11, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64*, i64** %11, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32*, i32** %7, align 8
  %33 = call %struct.TYPE_4__* @InfpGetLineForContext(i32* %32)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %12, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %40, i32* %6, align 4
  br label %116

41:                                               ; preds = %31
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %13, align 8
  store i64 1, i64* %15, align 8
  br label %45

45:                                               ; preds = %53, %41
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %13, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %15, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %15, align 8
  br label %45

56:                                               ; preds = %45
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %14, align 8
  store i64 0, i64* %16, align 8
  br label %58

58:                                               ; preds = %61, %56
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strlenW(i32 %64)
  %66 = add nsw i64 %65, 1
  %67 = load i64, i64* %16, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %16, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %14, align 8
  br label %58

72:                                               ; preds = %58
  %73 = load i64, i64* %16, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %16, align 8
  %75 = load i64*, i64** %11, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* %16, align 8
  %79 = load i64*, i64** %11, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i64*, i64** %9, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %114

83:                                               ; preds = %80
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @INF_STATUS_BUFFER_OVERFLOW, align 4
  store i32 %88, i32* %6, align 4
  br label %116

89:                                               ; preds = %83
  %90 = load i64*, i64** %9, align 8
  store i64* %90, i64** %17, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %14, align 8
  br label %92

92:                                               ; preds = %95, %89
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @strlenW(i32 %98)
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %16, align 8
  %101 = load i64*, i64** %17, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @strcpyW(i64* %101, i32 %104)
  %106 = load i64*, i64** %17, align 8
  %107 = load i64, i64* %16, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64* %108, i64** %17, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %14, align 8
  br label %92

112:                                              ; preds = %92
  %113 = load i64*, i64** %17, align 8
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %112, %80
  %115 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %87, %39, %23
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local %struct.TYPE_4__* @InfpGetLineForContext(i32*) #1

declare dso_local i64 @strlenW(i32) #1

declare dso_local i32 @strcpyW(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
