; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleacc/extr_main.c_get_builtin_accessible_obj.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleacc/extr_main.c_get_builtin_accessible_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"got window class: %s\0A\00", align 1
@builtin_classes = common dso_local global %struct.TYPE_7__* null, align 8
@OBJID_CLIENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unhandled window class: %s\0A\00", align 1
@WM_GETOBJECT = common dso_local global i32 0, align 4
@OBJID_QUERYCLASSNAMEIDX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unhandled class name idx: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64)* @get_builtin_accessible_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_builtin_accessible_obj(i32 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [64 x %struct.TYPE_7__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [64 x %struct.TYPE_7__], [64 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %13 = getelementptr inbounds [64 x %struct.TYPE_7__], [64 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %13)
  %15 = call i32 @RealGetWindowClassW(i32 %11, %struct.TYPE_7__* %12, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %126

18:                                               ; preds = %2
  %19 = getelementptr inbounds [64 x %struct.TYPE_7__], [64 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %20 = call i32 @debugstr_w(%struct.TYPE_7__* %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %66, %18
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %22
  %28 = getelementptr inbounds [64 x %struct.TYPE_7__], [64 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strcmpiW(%struct.TYPE_7__* %28, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @OBJID_CLIENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  br label %55

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = phi i32* [ %47, %41 ], [ %54, %48 ]
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds [64 x %struct.TYPE_7__], [64 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %61 = call i32 @debugstr_w(%struct.TYPE_7__* %60)
  %62 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32*, i32** %9, align 8
  store i32* %64, i32** %3, align 8
  br label %126

65:                                               ; preds = %27
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %22

69:                                               ; preds = %22
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @WM_GETOBJECT, align 4
  %72 = load i32, i32* @OBJID_QUERYCLASSNAMEIDX, align 4
  %73 = call i32 @SendMessageW(i32 %70, i32 %71, i32 0, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %125

76:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %119, %76
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %79)
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %83, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %82
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @OBJID_CLIENT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  br label %109

102:                                              ; preds = %91
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** @builtin_classes, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  br label %109

109:                                              ; preds = %102, %95
  %110 = phi i32* [ %101, %95 ], [ %108, %102 ]
  store i32* %110, i32** %10, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i32*, i32** %10, align 8
  store i32* %117, i32** %3, align 8
  br label %126

118:                                              ; preds = %82
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %77

122:                                              ; preds = %77
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %122, %69
  store i32* null, i32** %3, align 8
  br label %126

126:                                              ; preds = %125, %116, %63, %17
  %127 = load i32*, i32** %3, align 8
  ret i32* %127
}

declare dso_local i32 @RealGetWindowClassW(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(%struct.TYPE_7__*) #1

declare dso_local i32 @strcmpiW(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
