; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_llex.c_read_long_string.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_llex.c_read_long_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unfinished long %s (starting at line %d)\00", align 1
@TK_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @read_long_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_long_string(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = call i32 @save_and_next(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i64 @currIsNewline(%struct.TYPE_14__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i32 @inclinenumber(%struct.TYPE_14__* %19)
  br label %21

21:                                               ; preds = %18, %3
  br label %22

22:                                               ; preds = %73, %21
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %63 [
    i32 128, label %26
    i32 93, label %41
    i32 10, label %50
    i32 13, label %50
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %30, i8** %8, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @luaO_pushfstring(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @TK_EOS, align 4
  %40 = call i32 @lexerror(%struct.TYPE_14__* %37, i8* %38, i32 %39)
  br label %73

41:                                               ; preds = %22
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 @skip_sep(%struct.TYPE_14__* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = call i32 @save_and_next(%struct.TYPE_14__* %47)
  br label %74

49:                                               ; preds = %41
  br label %73

50:                                               ; preds = %22, %22
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = call i32 @save(%struct.TYPE_14__* %51, i8 signext 10)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call i32 @inclinenumber(%struct.TYPE_14__* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @luaZ_resetbuffer(i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %73

63:                                               ; preds = %22
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = call i32 @save_and_next(%struct.TYPE_14__* %67)
  br label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = call i32 @next(%struct.TYPE_14__* %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %62, %49, %26
  br label %22

74:                                               ; preds = %46
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @luaZ_buffer(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 2, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @luaZ_bufflen(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 2, %91
  %93 = mul nsw i32 2, %92
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %90, %94
  %96 = call i32 @luaX_newstring(%struct.TYPE_14__* %78, i64 %86, i64 %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %77, %74
  ret void
}

declare dso_local i32 @save_and_next(%struct.TYPE_14__*) #1

declare dso_local i64 @currIsNewline(%struct.TYPE_14__*) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_14__*) #1

declare dso_local i8* @luaO_pushfstring(i32, i8*, i8*, i32) #1

declare dso_local i32 @lexerror(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @skip_sep(%struct.TYPE_14__*) #1

declare dso_local i32 @save(%struct.TYPE_14__*, i8 signext) #1

declare dso_local i32 @luaZ_resetbuffer(i32) #1

declare dso_local i32 @next(%struct.TYPE_14__*) #1

declare dso_local i32 @luaX_newstring(%struct.TYPE_14__*, i64, i64) #1

declare dso_local i64 @luaZ_buffer(i32) #1

declare dso_local i64 @luaZ_bufflen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
