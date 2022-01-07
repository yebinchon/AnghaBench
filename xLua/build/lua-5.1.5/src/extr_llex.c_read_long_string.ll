; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_llex.c_read_long_string.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_llex.c_read_long_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unfinished long string\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unfinished long comment\00", align 1
@TK_EOS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @read_long_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_long_string(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = call i32 @save_and_next(%struct.TYPE_14__* %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = call i64 @currIsNewline(%struct.TYPE_14__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i32 @inclinenumber(%struct.TYPE_14__* %15)
  br label %17

17:                                               ; preds = %14, %3
  br label %18

18:                                               ; preds = %62, %17
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %52 [
    i32 128, label %22
    i32 93, label %30
    i32 10, label %39
    i32 13, label %39
  ]

22:                                               ; preds = %18
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)
  %28 = load i8, i8* @TK_EOS, align 1
  %29 = call i32 @luaX_lexerror(%struct.TYPE_14__* %23, i8* %27, i8 signext %28)
  br label %62

30:                                               ; preds = %18
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = call i32 @skip_sep(%struct.TYPE_14__* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = call i32 @save_and_next(%struct.TYPE_14__* %36)
  br label %63

38:                                               ; preds = %30
  br label %62

39:                                               ; preds = %18, %18
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = call i32 @save(%struct.TYPE_14__* %40, i8 signext 10)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 @inclinenumber(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @luaZ_resetbuffer(i32 %49)
  br label %51

51:                                               ; preds = %46, %39
  br label %62

52:                                               ; preds = %18
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = icmp ne %struct.TYPE_13__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = call i32 @save_and_next(%struct.TYPE_14__* %56)
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = call i32 @next(%struct.TYPE_14__* %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %51, %38, %22
  br label %18

63:                                               ; preds = %35
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @luaZ_buffer(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 2, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @luaZ_bufflen(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 2, %80
  %82 = mul nsw i32 2, %81
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %79, %83
  %85 = call i32 @luaX_newstring(%struct.TYPE_14__* %67, i64 %75, i64 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @save_and_next(%struct.TYPE_14__*) #1

declare dso_local i64 @currIsNewline(%struct.TYPE_14__*) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_14__*) #1

declare dso_local i32 @luaX_lexerror(%struct.TYPE_14__*, i8*, i8 signext) #1

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
