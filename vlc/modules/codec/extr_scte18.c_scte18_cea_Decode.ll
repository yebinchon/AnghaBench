; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_scte18.c_scte18_cea_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_scte18.c_scte18_cea_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32, i8*, i64*, i64*, i8* }
%struct.TYPE_8__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, %struct.TYPE_8__*)* @scte18_cea_Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @scte18_cea_Decode(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = call %struct.TYPE_7__* (...) @scte18_cea_New()
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %168

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 34
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %14
  br label %165

29:                                               ; preds = %23
  %30 = call i32 @BUF_ADVANCE(i32 1)
  %31 = load i32*, i32** %8, align 8
  %32 = call i8* @GetWBE(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = call i32 @BUF_ADVANCE(i32 2)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 7
  %38 = load i64*, i64** %37, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @memcpy(i64* %38, i32* %39, i64 3)
  %41 = call i32 @BUF_ADVANCE(i32 3)
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 23, %47
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  br label %165

51:                                               ; preds = %29
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  %54 = call i64* @malloc(i64 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 6
  store i64* %54, i64** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 6
  %59 = load i64*, i64** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @memcpy(i64* %59, i32* %61, i64 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i32 @BUF_ADVANCE(i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 22
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %51
  br label %165

82:                                               ; preds = %51
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i64, i64* %6, align 8
  %87 = call i8* @atsc_a65_Decode_multiple_string(i32* %83, i32* %85, i64 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* %6, align 8
  %91 = add i64 1, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @BUF_ADVANCE(i32 %92)
  %94 = load i64, i64* %9, align 8
  %95 = icmp ult i64 %94, 21
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %165

97:                                               ; preds = %82
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = call i32 @BUF_ADVANCE(i32 1)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @GetDWBE(i32* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = call i32 @BUF_ADVANCE(i32 4)
  %109 = load i32*, i32** %8, align 8
  %110 = call i8* @GetWBE(i32* %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %97
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 15
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 6000
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %118
  br label %165

129:                                              ; preds = %123, %97
  %130 = call i32 @BUF_ADVANCE(i32 2)
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 15
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %141 [
    i32 128, label %140
    i32 131, label %140
    i32 129, label %140
    i32 132, label %140
    i32 130, label %140
  ]

140:                                              ; preds = %129, %129, %129, %129, %129
  br label %142

141:                                              ; preds = %129
  br label %165

142:                                              ; preds = %140
  %143 = call i32 @BUF_ADVANCE(i32 2)
  %144 = call i32 @BUF_ADVANCE(i32 2)
  %145 = call i32 @BUF_ADVANCE(i32 2)
  %146 = call i32 @BUF_ADVANCE(i32 2)
  %147 = call i32 @BUF_ADVANCE(i32 2)
  %148 = load i32*, i32** %8, align 8
  %149 = call i8* @GetWBE(i32* %148)
  %150 = ptrtoint i8* %149 to i64
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, 2
  %154 = icmp ult i64 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %165

156:                                              ; preds = %142
  %157 = load i32*, i32** %4, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i64, i64* %6, align 8
  %161 = call i8* @atsc_a65_Decode_multiple_string(i32* %157, i32* %159, i64 %160)
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %164, %struct.TYPE_7__** %3, align 8
  br label %168

165:                                              ; preds = %155, %141, %128, %96, %81, %50, %28
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = call i32 @scte18_cea_Free(%struct.TYPE_7__* %166)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %168

168:                                              ; preds = %165, %156, %13
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %169
}

declare dso_local %struct.TYPE_7__* @scte18_cea_New(...) #1

declare dso_local i32 @BUF_ADVANCE(i32) #1

declare dso_local i8* @GetWBE(i32*) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i8* @atsc_a65_Decode_multiple_string(i32*, i32*, i64) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @scte18_cea_Free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
