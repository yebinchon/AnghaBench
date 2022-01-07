; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_llex.c_read_string.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_llex.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@TK_EOS = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, %struct.TYPE_15__*)* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_string(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = call i32 @save_and_next(%struct.TYPE_16__* %8)
  br label %10

10:                                               ; preds = %98, %3
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %99

16:                                               ; preds = %10
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %95 [
    i32 128, label %20
    i32 10, label %24
    i32 13, label %24
    i32 92, label %28
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load i32, i32* @TK_EOS, align 4
  %23 = call i32 @lexerror(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %98

24:                                               ; preds = %16, %16
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = load i32, i32* @TK_STRING, align 4
  %27 = call i32 @lexerror(%struct.TYPE_16__* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %98

28:                                               ; preds = %16
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = call i32 @next(%struct.TYPE_16__* %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %73 [
    i32 97, label %34
    i32 98, label %35
    i32 102, label %36
    i32 110, label %37
    i32 114, label %38
    i32 116, label %39
    i32 118, label %40
    i32 120, label %41
    i32 10, label %44
    i32 13, label %44
    i32 92, label %47
    i32 34, label %47
    i32 39, label %47
    i32 128, label %51
    i32 122, label %52
  ]

34:                                               ; preds = %28
  store i32 7, i32* %7, align 4
  br label %87

35:                                               ; preds = %28
  store i32 8, i32* %7, align 4
  br label %87

36:                                               ; preds = %28
  store i32 12, i32* %7, align 4
  br label %87

37:                                               ; preds = %28
  store i32 10, i32* %7, align 4
  br label %87

38:                                               ; preds = %28
  store i32 13, i32* %7, align 4
  br label %87

39:                                               ; preds = %28
  store i32 9, i32* %7, align 4
  br label %87

40:                                               ; preds = %28
  store i32 11, i32* %7, align 4
  br label %87

41:                                               ; preds = %28
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = call i32 @readhexaesc(%struct.TYPE_16__* %42)
  store i32 %43, i32* %7, align 4
  br label %87

44:                                               ; preds = %28, %28
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = call i32 @inclinenumber(%struct.TYPE_16__* %45)
  store i32 10, i32* %7, align 4
  br label %90

47:                                               ; preds = %28, %28, %28
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %87

51:                                               ; preds = %28
  br label %94

52:                                               ; preds = %28
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = call i32 @next(%struct.TYPE_16__* %53)
  br label %55

55:                                               ; preds = %71, %52
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lisspace(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = call i32 @currIsNewline(%struct.TYPE_16__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = call i32 @inclinenumber(%struct.TYPE_16__* %66)
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @next(%struct.TYPE_16__* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %55

72:                                               ; preds = %55
  br label %94

73:                                               ; preds = %28
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @lisdigit(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = call i32 @escerror(%struct.TYPE_16__* %80, i32* %82, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = call i32 @readdecesc(%struct.TYPE_16__* %85)
  store i32 %86, i32* %7, align 4
  br label %90

87:                                               ; preds = %47, %41, %40, %39, %38, %37, %36, %35, %34
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = call i32 @next(%struct.TYPE_16__* %88)
  br label %90

90:                                               ; preds = %87, %84, %44
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @save(%struct.TYPE_16__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %72, %51
  br label %98

95:                                               ; preds = %16
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = call i32 @save_and_next(%struct.TYPE_16__* %96)
  br label %98

98:                                               ; preds = %95, %94, %24, %20
  br label %10

99:                                               ; preds = %10
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = call i32 @save_and_next(%struct.TYPE_16__* %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @luaZ_buffer(i32 %105)
  %107 = add nsw i64 %106, 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @luaZ_bufflen(i32 %110)
  %112 = sub nsw i64 %111, 2
  %113 = call i32 @luaX_newstring(%struct.TYPE_16__* %102, i64 %107, i64 %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  ret void
}

declare dso_local i32 @save_and_next(%struct.TYPE_16__*) #1

declare dso_local i32 @lexerror(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @next(%struct.TYPE_16__*) #1

declare dso_local i32 @readhexaesc(%struct.TYPE_16__*) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_16__*) #1

declare dso_local i32 @lisspace(i32) #1

declare dso_local i32 @currIsNewline(%struct.TYPE_16__*) #1

declare dso_local i32 @lisdigit(i32) #1

declare dso_local i32 @escerror(%struct.TYPE_16__*, i32*, i32, i8*) #1

declare dso_local i32 @readdecesc(%struct.TYPE_16__*) #1

declare dso_local i32 @save(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @luaX_newstring(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i64 @luaZ_buffer(i32) #1

declare dso_local i64 @luaZ_bufflen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
