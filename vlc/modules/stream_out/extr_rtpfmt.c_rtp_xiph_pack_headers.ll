; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_xiph_pack_headers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_xiph_pack_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i64, i32**, i64*, i32*)* @rtp_xiph_pack_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_xiph_pack_headers(i64 %0, i8* %1, i64 %2, i32** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %26 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %30 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8*, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @xiph_SplitHeaders(i32* %29, i8** %32, i32* %17, i64 %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %190

39:                                               ; preds = %6
  %40 = load i32, i32* %17, align 4
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %190

44:                                               ; preds = %39
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = getelementptr inbounds i32, i32* %29, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = icmp ult i32 %49, 42
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %190

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8*, i8** %32, i64 0
  %55 = load i8*, i8** %54, align 16
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr inbounds i32, i32* %56, i64 41
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 3
  %60 = and i32 %59, 3
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %44
  %63 = bitcast [2 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %63, i8 0, i64 8, i1 false)
  store i32 0, i32* %20, align 4
  br label %64

64:                                               ; preds = %84, %62
  %65 = load i32, i32* %20, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %29, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %75, %67
  %73 = load i32, i32* %21, align 4
  %74 = icmp ugt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %21, align 4
  %82 = lshr i32 %81, 7
  store i32 %82, i32* %21, align 4
  br label %72

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %20, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = add i64 %89, %92
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  %97 = add i64 %93, %96
  %98 = getelementptr inbounds i32, i32* %29, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = zext i32 %99 to i64
  %101 = add i64 %97, %100
  %102 = getelementptr inbounds i32, i32* %29, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  %105 = add i64 %101, %104
  %106 = getelementptr inbounds i32, i32* %29, i64 2
  %107 = load i32, i32* %106, align 8
  %108 = zext i32 %107 to i64
  %109 = add i64 %105, %108
  %110 = load i64*, i64** %12, align 8
  store i64 %109, i64* %110, align 8
  %111 = load i64*, i64** %12, align 8
  %112 = load i64, i64* %111, align 8
  %113 = call i32* @malloc(i64 %112)
  %114 = load i32**, i32*** %11, align 8
  store i32* %113, i32** %114, align 8
  %115 = load i32**, i32*** %11, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %87
  %119 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %119, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %190

120:                                              ; preds = %87
  %121 = load i32**, i32*** %11, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %22, align 8
  %125 = load i32*, i32** %22, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %22, align 8
  store i32 2, i32* %125, align 4
  store i32 0, i32* %23, align 4
  br label %127

127:                                              ; preds = %160, %120
  %128 = load i32, i32* %23, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %163

130:                                              ; preds = %127
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %24, align 4
  br label %135

135:                                              ; preds = %156, %130
  %136 = load i32, i32* %24, align 4
  %137 = icmp ugt i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %135
  %139 = load i32, i32* %23, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %29, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %24, align 4
  %144 = sub i32 %143, 1
  %145 = mul i32 7, %144
  %146 = lshr i32 %142, %145
  %147 = and i32 %146, 127
  %148 = load i32*, i32** %22, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %24, align 4
  %150 = add i32 %149, -1
  store i32 %150, i32* %24, align 4
  %151 = icmp ugt i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %138
  %153 = load i32*, i32** %22, align 8
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, 128
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %152, %138
  %157 = load i32*, i32** %22, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %22, align 8
  br label %135

159:                                              ; preds = %135
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %23, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %23, align 4
  br label %127

163:                                              ; preds = %127
  store i32 0, i32* %25, align 4
  br label %164

164:                                              ; preds = %185, %163
  %165 = load i32, i32* %25, align 4
  %166 = icmp slt i32 %165, 3
  br i1 %166, label %167, label %188

167:                                              ; preds = %164
  %168 = load i32*, i32** %22, align 8
  %169 = load i32, i32* %25, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %32, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %25, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %29, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @memcpy(i32* %168, i8* %172, i32 %176)
  %178 = load i32, i32* %25, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %29, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %22, align 8
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %22, align 8
  br label %185

185:                                              ; preds = %167
  %186 = load i32, i32* %25, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %25, align 4
  br label %164

188:                                              ; preds = %164
  %189 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %189, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %190

190:                                              ; preds = %188, %118, %51, %42, %37
  %191 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xiph_SplitHeaders(i32*, i8**, i32*, i64, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
