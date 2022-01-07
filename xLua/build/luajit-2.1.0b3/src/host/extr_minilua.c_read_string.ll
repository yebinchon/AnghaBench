; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_read_string.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@TK_EOS = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"escape sequence too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, %struct.TYPE_11__*)* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_string(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = call i32 @save_and_next(%struct.TYPE_12__* %9)
  br label %11

11:                                               ; preds = %102, %93, %92, %47, %42, %25, %21, %3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %103

17:                                               ; preds = %11
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %99 [
    i32 -1, label %21
    i32 10, label %25
    i32 13, label %25
    i32 92, label %29
  ]

21:                                               ; preds = %17
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = load i32, i32* @TK_EOS, align 4
  %24 = call i32 @luaX_lexerror(%struct.TYPE_12__* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %11

25:                                               ; preds = %17, %17
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load i32, i32* @TK_STRING, align 4
  %28 = call i32 @luaX_lexerror(%struct.TYPE_12__* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %11

29:                                               ; preds = %17
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i32 @next(%struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %48 [
    i32 97, label %35
    i32 98, label %36
    i32 102, label %37
    i32 110, label %38
    i32 114, label %39
    i32 116, label %40
    i32 118, label %41
    i32 10, label %42
    i32 13, label %42
    i32 -1, label %47
  ]

35:                                               ; preds = %29
  store i32 7, i32* %7, align 4
  br label %93

36:                                               ; preds = %29
  store i32 8, i32* %7, align 4
  br label %93

37:                                               ; preds = %29
  store i32 12, i32* %7, align 4
  br label %93

38:                                               ; preds = %29
  store i32 10, i32* %7, align 4
  br label %93

39:                                               ; preds = %29
  store i32 13, i32* %7, align 4
  br label %93

40:                                               ; preds = %29
  store i32 9, i32* %7, align 4
  br label %93

41:                                               ; preds = %29
  store i32 11, i32* %7, align 4
  br label %93

42:                                               ; preds = %29, %29
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = call i32 @save(%struct.TYPE_12__* %43, i32 10)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i32 @inclinenumber(%struct.TYPE_12__* %45)
  br label %11

47:                                               ; preds = %29
  br label %11

48:                                               ; preds = %29
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @isdigit(i32 %51) #3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = call i32 @save_and_next(%struct.TYPE_12__* %55)
  br label %92

57:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 10, %59
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 48
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = call i32 @next(%struct.TYPE_12__* %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @isdigit(i32 %75) #3
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %72, %68
  %79 = phi i1 [ false, %68 ], [ %77, %72 ]
  br i1 %79, label %58, label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @UCHAR_MAX, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = load i32, i32* @TK_STRING, align 4
  %87 = call i32 @luaX_lexerror(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @save(%struct.TYPE_12__* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %54
  br label %11

93:                                               ; preds = %41, %40, %39, %38, %37, %36, %35
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @save(%struct.TYPE_12__* %94, i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = call i32 @next(%struct.TYPE_12__* %97)
  br label %11

99:                                               ; preds = %17
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = call i32 @save_and_next(%struct.TYPE_12__* %100)
  br label %102

102:                                              ; preds = %99
  br label %11

103:                                              ; preds = %11
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = call i32 @save_and_next(%struct.TYPE_12__* %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @luaZ_buffer(i32 %109)
  %111 = add nsw i64 %110, 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @luaZ_bufflen(i32 %114)
  %116 = sub nsw i64 %115, 2
  %117 = call i32 @luaX_newstring(%struct.TYPE_12__* %106, i64 %111, i64 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  ret void
}

declare dso_local i32 @save_and_next(%struct.TYPE_12__*) #1

declare dso_local i32 @luaX_lexerror(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @next(%struct.TYPE_12__*) #1

declare dso_local i32 @save(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_12__*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @luaX_newstring(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i64 @luaZ_buffer(i32) #1

declare dso_local i64 @luaZ_bufflen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
