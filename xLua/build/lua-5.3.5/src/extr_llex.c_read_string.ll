; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_llex.c_read_string.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_llex.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@TK_EOS = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, %struct.TYPE_16__*)* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_string(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = call i32 @save_and_next(%struct.TYPE_17__* %8)
  br label %10

10:                                               ; preds = %104, %3
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %105

16:                                               ; preds = %10
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %101 [
    i32 128, label %20
    i32 10, label %24
    i32 13, label %24
    i32 92, label %28
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = load i32, i32* @TK_EOS, align 4
  %23 = call i32 @lexerror(%struct.TYPE_17__* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %104

24:                                               ; preds = %16, %16
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = load i32, i32* @TK_STRING, align 4
  %27 = call i32 @lexerror(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %104

28:                                               ; preds = %16
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = call i32 @save_and_next(%struct.TYPE_17__* %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %80 [
    i32 97, label %34
    i32 98, label %35
    i32 102, label %36
    i32 110, label %37
    i32 114, label %38
    i32 116, label %39
    i32 118, label %40
    i32 120, label %41
    i32 117, label %44
    i32 10, label %47
    i32 13, label %47
    i32 92, label %50
    i32 34, label %50
    i32 39, label %50
    i32 128, label %54
    i32 122, label %55
  ]

34:                                               ; preds = %28
  store i32 7, i32* %7, align 4
  br label %89

35:                                               ; preds = %28
  store i32 8, i32* %7, align 4
  br label %89

36:                                               ; preds = %28
  store i32 12, i32* %7, align 4
  br label %89

37:                                               ; preds = %28
  store i32 10, i32* %7, align 4
  br label %89

38:                                               ; preds = %28
  store i32 13, i32* %7, align 4
  br label %89

39:                                               ; preds = %28
  store i32 9, i32* %7, align 4
  br label %89

40:                                               ; preds = %28
  store i32 11, i32* %7, align 4
  br label %89

41:                                               ; preds = %28
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = call i32 @readhexaesc(%struct.TYPE_17__* %42)
  store i32 %43, i32* %7, align 4
  br label %89

44:                                               ; preds = %28
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = call i32 @utf8esc(%struct.TYPE_17__* %45)
  br label %100

47:                                               ; preds = %28, %28
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = call i32 @inclinenumber(%struct.TYPE_17__* %48)
  store i32 10, i32* %7, align 4
  br label %92

50:                                               ; preds = %28, %28, %28
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  br label %89

54:                                               ; preds = %28
  br label %100

55:                                               ; preds = %28
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @luaZ_buffremove(i32 %58, i32 1)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = call i32 @next(%struct.TYPE_17__* %60)
  br label %62

62:                                               ; preds = %78, %55
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lisspace(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = call i32 @currIsNewline(%struct.TYPE_17__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = call i32 @inclinenumber(%struct.TYPE_17__* %73)
  br label %78

75:                                               ; preds = %68
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = call i32 @next(%struct.TYPE_17__* %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %62

79:                                               ; preds = %62
  br label %100

80:                                               ; preds = %28
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @lisdigit(i32 %84)
  %86 = call i32 @esccheck(%struct.TYPE_17__* %81, i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = call i32 @readdecesc(%struct.TYPE_17__* %87)
  store i32 %88, i32* %7, align 4
  br label %92

89:                                               ; preds = %50, %41, %40, %39, %38, %37, %36, %35, %34
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = call i32 @next(%struct.TYPE_17__* %90)
  br label %92

92:                                               ; preds = %89, %80, %47
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @luaZ_buffremove(i32 %95, i32 1)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @save(%struct.TYPE_17__* %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %79, %54, %44
  br label %104

101:                                              ; preds = %16
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = call i32 @save_and_next(%struct.TYPE_17__* %102)
  br label %104

104:                                              ; preds = %101, %100, %24, %20
  br label %10

105:                                              ; preds = %10
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = call i32 @save_and_next(%struct.TYPE_17__* %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @luaZ_buffer(i32 %111)
  %113 = add nsw i64 %112, 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @luaZ_bufflen(i32 %116)
  %118 = sub nsw i64 %117, 2
  %119 = call i32 @luaX_newstring(%struct.TYPE_17__* %108, i64 %113, i64 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  ret void
}

declare dso_local i32 @save_and_next(%struct.TYPE_17__*) #1

declare dso_local i32 @lexerror(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @readhexaesc(%struct.TYPE_17__*) #1

declare dso_local i32 @utf8esc(%struct.TYPE_17__*) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_17__*) #1

declare dso_local i32 @luaZ_buffremove(i32, i32) #1

declare dso_local i32 @next(%struct.TYPE_17__*) #1

declare dso_local i32 @lisspace(i32) #1

declare dso_local i32 @currIsNewline(%struct.TYPE_17__*) #1

declare dso_local i32 @esccheck(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @lisdigit(i32) #1

declare dso_local i32 @readdecesc(%struct.TYPE_17__*) #1

declare dso_local i32 @save(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @luaX_newstring(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i64 @luaZ_buffer(i32) #1

declare dso_local i64 @luaZ_bufflen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
