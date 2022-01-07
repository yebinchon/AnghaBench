; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_CdTextParsePackText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_CdTextParsePackText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDTEXT_MAX_TRACKS = common dso_local global i32 0, align 4
@CDTEXT_PACK_HEADER = common dso_local global i64 0, align 8
@CDTEXT_PACK_PAYLOAD = common dso_local global i32 0, align 4
@CDTEXT_TEXT_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64*, i64*, i8*, i32*, [16 x i8*]*)* @CdTextParsePackText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CdTextParsePackText(i32* %0, i32 %1, i64* %2, i64* %3, i8* %4, i32* %5, [16 x i8*]* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [16 x i8*]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store [16 x i8*]* %6, [16 x i8*]** %14, align 8
  %24 = load i32, i32* @CDTEXT_MAX_TRACKS, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 127
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = load i64*, i64** %10, align 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %44, %7
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* @CDTEXT_PACK_HEADER, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %19, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = load i32, i32* @CDTEXT_PACK_PAYLOAD, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %20, align 8
  %54 = load i32*, i32** %19, align 8
  store i32* %54, i32** %21, align 8
  br label %55

55:                                               ; preds = %175, %46
  %56 = load i32*, i32** %21, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %176

59:                                               ; preds = %55
  %60 = load i32*, i32** %21, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load i32*, i32** %20, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %17, align 4
  %70 = call i64 @CdTextPayloadLength(i8* %61, i32 %68, i32 %69)
  store i64 %70, i64* %22, align 8
  %71 = load i64, i64* %22, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @__MAX(i32 %75, i32 %76)
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %59
  %80 = load i64, i64* %22, align 8
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i32*, i32** %21, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i64*, i64** %11, align 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i64*, i64** %10, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %10, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 0, i8* %102, align 1
  br label %129

103:                                              ; preds = %91, %87, %82, %79
  %104 = load i64, i64* %22, align 8
  store i64 %104, i64* %23, align 8
  %105 = load i64*, i64** %10, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %22, align 8
  %108 = add i64 %106, %107
  %109 = load i64, i64* @CDTEXT_TEXT_BUFFER, align 8
  %110 = icmp uge i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i64, i64* @CDTEXT_TEXT_BUFFER, align 8
  %113 = load i64*, i64** %10, align 8
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %112, %114
  store i64 %115, i64* %23, align 8
  br label %116

116:                                              ; preds = %111, %103
  %117 = load i8*, i8** %12, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32*, i32** %21, align 8
  %122 = load i64, i64* %23, align 8
  %123 = call i32 @memcpy(i8* %120, i32* %121, i64 %122)
  %124 = load i64, i64* %23, align 8
  %125 = load i64*, i64** %10, align 8
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, %124
  store i64 %127, i64* %125, align 8
  %128 = load i64*, i64** %11, align 8
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %116, %95
  %130 = load i32*, i32** %21, align 8
  %131 = load i64, i64* %22, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32*, i32** %20, align 8
  %134 = icmp ult i32* %132, %133
  br i1 %134, label %135, label %173

135:                                              ; preds = %129
  %136 = load i64*, i64** %10, align 8
  %137 = load i64, i64* %136, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  %140 = load i8*, i8** %12, align 8
  %141 = load i64*, i64** %10, align 8
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load [16 x i8*]*, [16 x i8*]** %14, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [16 x i8*], [16 x i8*]* %144, i64 %146
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %148, 128
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [16 x i8*], [16 x i8*]* %147, i64 0, i64 %150
  %152 = call i32 @CdTextAppendPayload(i8* %140, i64 %142, i32 %143, i8** %151)
  %153 = load i64*, i64** %10, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %11, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i64*, i64** %10, align 8
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* @CDTEXT_MAX_TRACKS, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %139
  br label %176

162:                                              ; preds = %139
  br label %163

163:                                              ; preds = %162, %135
  %164 = load i32*, i32** %21, align 8
  %165 = load i64, i64* %22, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %17, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 2, i32 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  store i32* %172, i32** %21, align 8
  br label %175

173:                                              ; preds = %129
  %174 = load i32*, i32** %20, align 8
  store i32* %174, i32** %21, align 8
  br label %175

175:                                              ; preds = %173, %163
  br label %55

176:                                              ; preds = %161, %55
  ret void
}

declare dso_local i64 @CdTextPayloadLength(i8*, i32, i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @CdTextAppendPayload(i8*, i64, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
