; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_get_opentype_script.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_get_opentype_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@ShapingData = common dso_local global %struct.TYPE_10__* null, align 8
@scriptInformation = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i64)* @get_opentype_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_opentype_script(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ShapingData, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @scriptInformation, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %30, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ShapingData, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  br label %122

47:                                               ; preds = %27, %18, %15
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  br label %122

51:                                               ; preds = %4
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ShapingData, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ShapingData, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %5, align 8
  br label %122

71:                                               ; preds = %54, %51
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @scriptInformation, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @scriptInformation, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %5, align 8
  br label %122

88:                                               ; preds = %71
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @GetTextCharsetInfo(i32 %89, i32* null, i32 0)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  switch i32 %91, label %120 [
    i32 142, label %92
    i32 140, label %92
    i32 139, label %94
    i32 138, label %96
    i32 137, label %98
    i32 136, label %100
    i32 135, label %102
    i32 132, label %104
    i32 131, label %106
    i32 129, label %108
    i32 128, label %110
    i32 133, label %112
    i32 141, label %114
    i32 134, label %116
    i32 130, label %118
  ]

92:                                               ; preds = %88, %88
  %93 = call i64 @MS_MAKE_TAG(i8 signext 108, i8 signext 97, i8 signext 116, i8 signext 110)
  store i64 %93, i64* %5, align 8
  br label %122

94:                                               ; preds = %88
  %95 = call i64 @MS_MAKE_TAG(i8 signext 104, i8 signext 97, i8 signext 110, i8 signext 105)
  store i64 %95, i64* %5, align 8
  br label %122

96:                                               ; preds = %88
  %97 = call i64 @MS_MAKE_TAG(i8 signext 108, i8 signext 97, i8 signext 116, i8 signext 110)
  store i64 %97, i64* %5, align 8
  br label %122

98:                                               ; preds = %88
  %99 = call i64 @MS_MAKE_TAG(i8 signext 104, i8 signext 97, i8 signext 110, i8 signext 105)
  store i64 %99, i64* %5, align 8
  br label %122

100:                                              ; preds = %88
  %101 = call i64 @MS_MAKE_TAG(i8 signext 103, i8 signext 114, i8 signext 101, i8 signext 107)
  store i64 %101, i64* %5, align 8
  br label %122

102:                                              ; preds = %88
  %103 = call i64 @MS_MAKE_TAG(i8 signext 104, i8 signext 97, i8 signext 110, i8 signext 103)
  store i64 %103, i64* %5, align 8
  br label %122

104:                                              ; preds = %88
  %105 = call i64 @MS_MAKE_TAG(i8 signext 99, i8 signext 121, i8 signext 114, i8 signext 108)
  store i64 %105, i64* %5, align 8
  br label %122

106:                                              ; preds = %88
  %107 = call i64 @MS_MAKE_TAG(i8 signext 107, i8 signext 97, i8 signext 110, i8 signext 97)
  store i64 %107, i64* %5, align 8
  br label %122

108:                                              ; preds = %88
  %109 = call i64 @MS_MAKE_TAG(i8 signext 108, i8 signext 97, i8 signext 116, i8 signext 110)
  store i64 %109, i64* %5, align 8
  br label %122

110:                                              ; preds = %88
  %111 = call i64 @MS_MAKE_TAG(i8 signext 108, i8 signext 97, i8 signext 116, i8 signext 110)
  store i64 %111, i64* %5, align 8
  br label %122

112:                                              ; preds = %88
  %113 = call i64 @MS_MAKE_TAG(i8 signext 108, i8 signext 97, i8 signext 116, i8 signext 110)
  store i64 %113, i64* %5, align 8
  br label %122

114:                                              ; preds = %88
  %115 = call i64 @MS_MAKE_TAG(i8 signext 97, i8 signext 114, i8 signext 97, i8 signext 98)
  store i64 %115, i64* %5, align 8
  br label %122

116:                                              ; preds = %88
  %117 = call i64 @MS_MAKE_TAG(i8 signext 104, i8 signext 101, i8 signext 98, i8 signext 114)
  store i64 %117, i64* %5, align 8
  br label %122

118:                                              ; preds = %88
  %119 = call i64 @MS_MAKE_TAG(i8 signext 116, i8 signext 104, i8 signext 97, i8 signext 105)
  store i64 %119, i64* %5, align 8
  br label %122

120:                                              ; preds = %88
  %121 = call i64 @MS_MAKE_TAG(i8 signext 108, i8 signext 97, i8 signext 116, i8 signext 110)
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %80, %63, %47, %39
  %123 = load i64, i64* %5, align 8
  ret i64 %123
}

declare dso_local i32 @GetTextCharsetInfo(i32, i32*, i32) #1

declare dso_local i64 @MS_MAKE_TAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
