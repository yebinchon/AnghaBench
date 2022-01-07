; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_merge_colors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_merge_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ILC_COLOR = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@ILC_COLOR4 = common dso_local global i32 0, align 4
@ILC_COLOR8 = common dso_local global i32 0, align 4
@ILC_COLOR16 = common dso_local global i32 0, align 4
@ILC_COLOR24 = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@ILC_COLORDDB = common dso_local global i32 0, align 4
@hinst = common dso_local global i32 0, align 4
@icon_bits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create hicon1\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create himl[%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to add icon1 to himl[%d].\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"merge himl[%d], himl[%d] failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"wrong biBitCount %d when merging lists %d (%d) and %d (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Imagelist merged from %d and %d had no mask\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_merge_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_merge_colors() #0 {
  %1 = alloca [8 x i32*], align 16
  %2 = alloca i32*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %10 = load i32, i32* @ILC_COLOR, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @ILC_COLOR, align 4
  %13 = load i32, i32* @ILC_MASK, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load i32, i32* @ILC_COLOR4, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @ILC_COLOR8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @ILC_COLOR16, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @ILC_COLOR24, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @ILC_COLOR32, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @ILC_COLORDDB, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32, i32* @hinst, align 4
  %28 = load i32, i32* @icon_bits, align 4
  %29 = load i32, i32* @icon_bits, align 4
  %30 = call i32* @CreateIcon(i32 %27, i32 32, i32 32, i32 1, i32 1, i32 %28, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %86, %0
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %89

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @pImageList_Create(i32 32, i32 32, i32 %42, i32 0, i32 3)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 %45
  store i32* %43, i32** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @pImageList_ReplaceIcon(i32* %58, i32 -1, i32* %59)
  %61 = icmp eq i64 0, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %38
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %85

73:                                               ; preds = %70, %67, %38
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @pImageList_GetImageInfo(i32* %77, i32 0, %struct.TYPE_3__* %5)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @get_color_format(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %83
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %73, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %35

89:                                               ; preds = %35
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @DestroyIcon(i32* %90)
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %186, %89
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %189

95:                                               ; preds = %92
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %182, %95
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %185

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = call i32* @pImageList_Merge(i32* %103, i32 0, i32* %107, i32 0, i32 0, i32 0)
  store i32* %108, i32** %2, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = icmp ne i32* %109, null
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @pImageList_GetImageInfo(i32* %115, i32 0, %struct.TYPE_3__* %5)
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @get_color_format(i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %122, label %141

122:                                              ; preds = %99
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 7
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 16
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %130, i32 %134, i32 %135, i32 %139)
  br label %172

141:                                              ; preds = %122, %99
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  br label %156

151:                                              ; preds = %141
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i32 [ %150, %146 ], [ %155, %151 ]
  %158 = icmp eq i32 %142, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %160, i32 %161, i32 %165, i32 %166, i32 %170)
  br label %172

172:                                              ; preds = %156, %125
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %177, i32 %178)
  %180 = load i32*, i32** %2, align 8
  %181 = call i32 @pImageList_Destroy(i32* %180)
  br label %182

182:                                              ; preds = %172
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %96

185:                                              ; preds = %96
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %92

189:                                              ; preds = %92
  store i32 0, i32* %7, align 4
  br label %190

190:                                              ; preds = %199, %189
  %191 = load i32, i32* %7, align 4
  %192 = icmp slt i32 %191, 8
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @pImageList_Destroy(i32* %197)
  br label %199

199:                                              ; preds = %193
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %190

202:                                              ; preds = %190
  ret void
}

declare dso_local i32* @CreateIcon(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i64 @pImageList_ReplaceIcon(i32*, i32, i32*) #1

declare dso_local i32 @pImageList_GetImageInfo(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @get_color_format(i32) #1

declare dso_local i32 @DestroyIcon(i32*) #1

declare dso_local i32* @pImageList_Merge(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @pImageList_Destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
