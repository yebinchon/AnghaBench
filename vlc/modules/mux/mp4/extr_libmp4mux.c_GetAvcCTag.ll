; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetAvcCTag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetAvcCTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"avcC\00", align 1
@PROFILE_H264_MAIN = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_10 = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_422 = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_444 = common dso_local global i32 0, align 4
@PROFILE_H264_HIGH_444_PREDICTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @GetAvcCTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetAvcCTag(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [3 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %185

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @h264_AnnexB_get_spspps(i32* %20, i64 %21, i32** %7, i64* %10, i32** %8, i64* %11, i32** %9, i64* %12)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32* null, i32** %9, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @bo_add_8(i32* %26, i32 1)
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ugt i64 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @PROFILE_H264_MAIN, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %34, %31 ], [ %36, %35 ]
  %39 = call i32 @bo_add_8(i32* %28, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ugt i64 %41, 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 64, %47 ]
  %50 = call i32 @bo_add_8(i32* %40, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ugt i64 %52, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ %57, %54 ], [ 30, %58 ]
  %61 = call i32 @bo_add_8(i32* %51, i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @bo_add_8(i32* %62, i32 255)
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ugt i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = or i32 224, %68
  %70 = call i32 @bo_add_8(i32* %64, i32 %69)
  %71 = load i64, i64* %10, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %59
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @bo_add_16be(i32* %74, i64 %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @bo_add_mem(i32* %77, i64 %78, i32* %79)
  br label %81

81:                                               ; preds = %73, %59
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ugt i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = call i32 @bo_add_8(i32* %82, i32 %86)
  %88 = load i64, i64* %11, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @bo_add_16be(i32* %91, i64 %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @bo_add_mem(i32* %94, i64 %95, i32* %96)
  br label %98

98:                                               ; preds = %90, %81
  %99 = load i64, i64* %10, align 8
  %100 = icmp ugt i64 %99, 3
  br i1 %100, label %101, label %183

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PROFILE_H264_HIGH, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %131, label %107

107:                                              ; preds = %101
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PROFILE_H264_HIGH_10, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %131, label %113

113:                                              ; preds = %107
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @PROFILE_H264_HIGH_422, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %113
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PROFILE_H264_HIGH_444, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PROFILE_H264_HIGH_444_PREDICTIVE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %183

131:                                              ; preds = %125, %119, %113, %107, %101
  %132 = load i32*, i32** %7, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32* @h264_decode_sps(i32* %132, i64 %133, i32 1)
  store i32* %134, i32** %13, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %182

137:                                              ; preds = %131
  %138 = load i32*, i32** %13, align 8
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %142 = call i64 @h264_get_chroma_luma(i32* %138, i32* %139, i32* %140, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %179

144:                                              ; preds = %137
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 252, %147
  %149 = call i32 @bo_add_8(i32* %145, i32 %148)
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 8
  %154 = or i32 248, %153
  %155 = call i32 @bo_add_8(i32* %150, i32 %154)
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 8
  %160 = or i32 248, %159
  %161 = call i32 @bo_add_8(i32* %156, i32 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i64, i64* %12, align 8
  %164 = icmp ugt i64 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 1, i32 0
  %167 = call i32 @bo_add_8(i32* %162, i32 %166)
  %168 = load i64, i64* %12, align 8
  %169 = icmp ugt i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %144
  %171 = load i32*, i32** %6, align 8
  %172 = load i64, i64* %12, align 8
  %173 = call i32 @bo_add_16be(i32* %171, i64 %172)
  %174 = load i32*, i32** %6, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @bo_add_mem(i32* %174, i64 %175, i32* %176)
  br label %178

178:                                              ; preds = %170, %144
  br label %179

179:                                              ; preds = %178, %137
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @h264_release_sps(i32* %180)
  br label %182

182:                                              ; preds = %179, %131
  br label %183

183:                                              ; preds = %182, %125, %98
  %184 = load i32*, i32** %6, align 8
  store i32* %184, i32** %3, align 8
  br label %185

185:                                              ; preds = %183, %18
  %186 = load i32*, i32** %3, align 8
  ret i32* %186
}

declare dso_local i32* @box_new(i8*) #1

declare dso_local i32 @h264_AnnexB_get_spspps(i32*, i64, i32**, i64*, i32**, i64*, i32**, i64*) #1

declare dso_local i32 @bo_add_8(i32*, i32) #1

declare dso_local i32 @bo_add_16be(i32*, i64) #1

declare dso_local i32 @bo_add_mem(i32*, i64, i32*) #1

declare dso_local i32* @h264_decode_sps(i32*, i64, i32) #1

declare dso_local i64 @h264_get_chroma_luma(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @h264_release_sps(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
