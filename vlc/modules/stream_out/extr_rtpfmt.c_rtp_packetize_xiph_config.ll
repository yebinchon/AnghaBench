; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_xiph_config.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_xiph_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"configuration=\00", align 1
@XIPH_IDENT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtp_packetize_xiph_config(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %4, align 4
  br label %167

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @strstr(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 14
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 59)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  %49 = call i8* @malloc(i64 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %27
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %4, align 4
  br label %167

54:                                               ; preds = %27
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i8* %55, i8* %56, i32 %58)
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @rtp_mtu(i32* %63)
  %65 = sub nsw i32 %64, 6
  store i32 %65, i32* %12, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @vlc_b64_decode_binary(i8** %13, i8* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %15, align 4
  %71 = icmp sle i32 %70, 9
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %4, align 4
  br label %167

76:                                               ; preds = %54
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 9
  store i8* %78, i8** %14, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %79, 9
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %12, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %87

87:                                               ; preds = %160, %76
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %163

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @__MIN(i32 %92, i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 18, %95
  %97 = call %struct.TYPE_5__* @block_Alloc(i32 %96)
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %19, align 8
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %114

101:                                              ; preds = %91
  store i32 0, i32* %21, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 1, i32* %20, align 4
  br label %113

105:                                              ; preds = %101
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 3, i32* %20, align 4
  br label %112

111:                                              ; preds = %105
  store i32 2, i32* %20, align 4
  br label %112

112:                                              ; preds = %111, %110
  br label %113

113:                                              ; preds = %112, %104
  br label %114

114:                                              ; preds = %113, %100
  %115 = load i32, i32* @XIPH_IDENT, align 4
  %116 = and i32 %115, 16777215
  %117 = shl i32 %116, 8
  %118 = load i32, i32* %20, align 4
  %119 = shl i32 %118, 6
  %120 = or i32 %117, %119
  %121 = or i32 %120, 16
  %122 = load i32, i32* %21, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %22, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @rtp_packetize_common(i32* %124, %struct.TYPE_5__* %125, i32 0, i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 12
  %132 = load i32, i32* %22, align 4
  %133 = call i32 @SetDWBE(i8* %131, i32 %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 16
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @SetWBE(i8* %137, i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 18
  %144 = load i8*, i8** %14, align 8
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @memcpy(i8* %143, i8* %144, i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %152 = call i32 @rtp_packetize_send(i32* %150, %struct.TYPE_5__* %151)
  %153 = load i32, i32* %18, align 4
  %154 = load i8*, i8** %14, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %14, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %114
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %87

163:                                              ; preds = %87
  %164 = load i8*, i8** %13, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %72, %52, %25
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local i32 @vlc_b64_decode_binary(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_5__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SetDWBE(i8*, i32) #1

declare dso_local i32 @SetWBE(i8*, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
