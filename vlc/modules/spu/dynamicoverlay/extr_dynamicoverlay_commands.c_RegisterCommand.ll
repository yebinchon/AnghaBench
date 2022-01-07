; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_RegisterCommand.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_RegisterCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }

@p_commands = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"%zu commands are available\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RegisterCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @p_commands, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @calloc(i64 %15, i32 8)
  %17 = inttoptr i64 %16 to %struct.TYPE_10__**
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store %struct.TYPE_10__** %17, %struct.TYPE_10__*** %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %21, align 8
  %23 = icmp ne %struct.TYPE_10__** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %139

25:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %110, %25
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %113

32:                                               ; preds = %26
  %33 = call i64 @malloc(i32 24)
  %34 = inttoptr i64 %33 to %struct.TYPE_10__*
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %37, i64 %38
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  br label %139

48:                                               ; preds = %32
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @p_commands, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @strdup(i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %57, i64 %58
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i64 %54, i64* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @p_commands, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  store i32 %66, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @p_commands, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %81, i64 %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  store i32 %78, i32* %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @p_commands, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %93, i64 %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i32 %90, i32* %97, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** @p_commands, align 8
  %99 = load i64, i64* %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %104, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %105, i64 %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32 %102, i32* %109, align 8
  br label %110

110:                                              ; preds = %48
  %111 = load i64, i64* %4, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %4, align 8
  br label %26

113:                                              ; preds = %26
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @msg_Dbg(%struct.TYPE_8__* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %117)
  store i64 0, i64* %5, align 8
  br label %119

119:                                              ; preds = %136, %113
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %119
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %129, i64 %130
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @msg_Dbg(%struct.TYPE_8__* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %125
  %137 = load i64, i64* %5, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %5, align 8
  br label %119

139:                                              ; preds = %24, %47, %119
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @strdup(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
