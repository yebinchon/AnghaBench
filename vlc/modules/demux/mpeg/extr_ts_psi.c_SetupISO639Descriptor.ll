; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_SetupISO639Descriptor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_SetupISO639Descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i64, %struct.TYPE_11__*, i64, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"      Failed to decode a ISO 639 descriptor\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"      found language: %s\00", align 1
@ES_PRIORITY_SELECTABLE_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32*)* @SetupISO639Descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetupISO639Descriptor(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.TYPE_12__* @dvbpsi_DecodeISO639Dr(i32* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @msg_Err(i32* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %178

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %58, label %24

24:                                               ; preds = %18
  %25 = call i8* @malloc(i32 4)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %24
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i8* %38, i32 %44, i32 3)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  store i8 0, i8* %50, align 1
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @msg_Dbg(i32* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %34, %24
  br label %58

58:                                               ; preds = %57, %18
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = call i8* @GetIso639AudioTypeDesc(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i8* %72, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %58
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i64, i64* @ES_PRIORITY_SELECTABLE_MIN, align 8
  %81 = add nsw i64 %80, 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %178

92:                                               ; preds = %85
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i64 %96, i64* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %92
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = mul i64 16, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @malloc(i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_11__*
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %116, align 8
  br label %117

117:                                              ; preds = %105, %92
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = icmp ne %struct.TYPE_11__* %121, null
  br i1 %122, label %123, label %178

123:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %174, %123
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %126, %130
  br i1 %131, label %132, label %177

132:                                              ; preds = %124
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %138
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %10, align 8
  %140 = call i8* @malloc(i32 4)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = icmp ne i8* %140, null
  br i1 %143, label %144, label %162

144:                                              ; preds = %132
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @memcpy(i8* %147, i32 %156, i32 3)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  store i8 0, i8* %161, align 1
  br label %162

162:                                              ; preds = %144, %132
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @GetIso639AudioTypeDesc(i32 %170)
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %162
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %124

177:                                              ; preds = %124
  br label %178

178:                                              ; preds = %15, %91, %177, %117
  ret void
}

declare dso_local %struct.TYPE_12__* @dvbpsi_DecodeISO639Dr(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i8* @GetIso639AudioTypeDesc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
