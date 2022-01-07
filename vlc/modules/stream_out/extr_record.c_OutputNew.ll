; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_record.c_OutputNew.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_record.c_OutputNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"std{access=file{no-append,no-format,no-overwrite},mux=%s,dst='%s'}\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Using record output `%s'\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"record-file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i8*)* @OutputNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OutputNew(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i8*, i8** %9, align 8
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %29 ]
  %32 = call i64 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %24, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %118

35:                                               ; preds = %30
  %36 = load i8*, i8** %12, align 8
  %37 = call i8* @config_StringEscape(i8* %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @free(i8* %41)
  br label %118

43:                                               ; preds = %35
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %13, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i8* null, i8** %13, align 8
  br label %118

51:                                               ; preds = %43
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @msg_Dbg(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @sout_StreamChainNew(i32 %57, i8* %58, i32* null, i32* null)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  br label %118

67:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %77, i64 %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %16, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = call i32 @sout_StreamIdAdd(i32 %84, i32* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %74
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %94, %74
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %68

101:                                              ; preds = %68
  %102 = load i8*, i8** %11, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = call i32 @vlc_object_instance(%struct.TYPE_7__* %108)
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @var_SetString(i32 %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %107, %104, %101
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %5, align 4
  br label %123

118:                                              ; preds = %66, %50, %40, %34
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 @free(i8* %121)
  store i32 -1, i32* %5, align 4
  br label %123

123:                                              ; preds = %118, %112
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*, ...) #1

declare dso_local i8* @config_StringEscape(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @sout_StreamChainNew(i32, i8*, i32*, i32*) #1

declare dso_local i32 @sout_StreamIdAdd(i32, i32*) #1

declare dso_local i32 @var_SetString(i32, i8*, i8*) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
