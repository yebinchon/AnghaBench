; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_llex.c_read_long_string.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_llex.c_read_long_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unfinished long string\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unfinished long comment\00", align 1
@TK_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @read_long_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_long_string(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = call i32 @save_and_next(%struct.TYPE_14__* %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = call i64 @currIsNewline(%struct.TYPE_14__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = call i32 @inclinenumber(%struct.TYPE_14__* %13)
  br label %15

15:                                               ; preds = %12, %3
  br label %16

16:                                               ; preds = %60, %15
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %50 [
    i32 128, label %20
    i32 93, label %28
    i32 10, label %37
    i32 13, label %37
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)
  %26 = load i32, i32* @TK_EOS, align 4
  %27 = call i32 @lexerror(%struct.TYPE_14__* %21, i8* %25, i32 %26)
  br label %60

28:                                               ; preds = %16
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = call i32 @skip_sep(%struct.TYPE_14__* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @save_and_next(%struct.TYPE_14__* %34)
  br label %61

36:                                               ; preds = %28
  br label %60

37:                                               ; preds = %16, %16
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = call i32 @save(%struct.TYPE_14__* %38, i8 signext 10)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = call i32 @inclinenumber(%struct.TYPE_14__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @luaZ_resetbuffer(i32 %47)
  br label %49

49:                                               ; preds = %44, %37
  br label %60

50:                                               ; preds = %16
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call i32 @save_and_next(%struct.TYPE_14__* %54)
  br label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = call i32 @next(%struct.TYPE_14__* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %49, %36, %20
  br label %16

61:                                               ; preds = %33
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %86

64:                                               ; preds = %61
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @luaZ_buffer(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @luaZ_bufflen(i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 2, %78
  %80 = mul nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %77, %81
  %83 = call i32 @luaX_newstring(%struct.TYPE_14__* %65, i64 %73, i64 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @save_and_next(%struct.TYPE_14__*) #1

declare dso_local i64 @currIsNewline(%struct.TYPE_14__*) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_14__*) #1

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
