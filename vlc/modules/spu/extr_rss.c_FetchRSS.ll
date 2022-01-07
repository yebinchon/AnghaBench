; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_FetchRSS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_FetchRSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, i32*, i32*, i64, i32*, i32*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [29 x i8] c"opening %s RSS/Atom feed ...\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to open %s for reading\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to open %s for parsing\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"done with %s RSS/Atom feed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*)* @FetchRSS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @FetchRSS(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_15__* @vlc_alloc(i32 %22, i32 64)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %10, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %153

27:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %131, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %134

32:                                               ; preds = %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 %35
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %11, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 %41
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %12, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 7
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 6
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strdup(i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @msg_Dbg(%struct.TYPE_16__* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32* @vlc_stream_NewURL(%struct.TYPE_16__* %68, i32 %71)
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %32
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @msg_Err(%struct.TYPE_16__* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32* null, i32** %6, align 8
  br label %136

81:                                               ; preds = %32
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32* @xml_ReaderCreate(%struct.TYPE_16__* %82, i32* %83)
  store i32* %84, i32** %6, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @msg_Err(%struct.TYPE_16__* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %136

93:                                               ; preds = %81
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = call i32 @ParseFeed(%struct.TYPE_16__* %94, i32* %95, %struct.TYPE_15__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %136

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32* @LoadImage(%struct.TYPE_16__* %114, i32* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  br label %121

121:                                              ; preds = %113, %108, %103, %100
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @msg_Dbg(%struct.TYPE_16__* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @xml_ReaderDelete(i32* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @vlc_stream_Delete(i32* %129)
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %28

134:                                              ; preds = %28
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %2, align 8
  br label %153

136:                                              ; preds = %99, %87, %75
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @FreeRSS(%struct.TYPE_15__* %137, i32 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @xml_ReaderDelete(i32* %144)
  br label %146

146:                                              ; preds = %143, %136
  %147 = load i32*, i32** %5, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @vlc_stream_Delete(i32* %150)
  br label %152

152:                                              ; preds = %149, %146
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %153

153:                                              ; preds = %152, %134, %26
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %154
}

declare dso_local %struct.TYPE_15__* @vlc_alloc(i32, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32* @vlc_stream_NewURL(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32* @xml_ReaderCreate(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ParseFeed(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32* @LoadImage(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

declare dso_local i32 @FreeRSS(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
