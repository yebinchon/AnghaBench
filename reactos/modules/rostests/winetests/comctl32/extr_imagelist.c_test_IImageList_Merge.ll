; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Merge.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"failed to create himl1\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to create himl2\0A\00", align 1
@hinst = common dso_local global i32 0, align 4
@icon_bits = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to create hicon1\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"add icon1 to himl2 failed\0A\00", align 1
@IID_IImageList = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"merge himl1,-1 failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"merge himl1,0 failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to recreate himl2\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"merge himl2,-1 failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"merge himl2,0 failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"re-add icon1 to himl2 failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"merge himl2 with itself failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"add icon1 to himl1 failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"merge himl1 with himl2 failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"merge himl1 with himl2 8,16 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IImageList_Merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IImageList_Merge() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = call i32 (...) @create_window()
  store i32 %10, i32* %7, align 4
  %11 = call i32* @pImageList_Create(i32 32, i32 32, i32 0, i32 0, i32 3)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = call i32* @pImageList_Create(i32 32, i32 32, i32 0, i32 0, i32 3)
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @hinst, align 4
  %22 = load i32, i32* @icon_bits, align 4
  %23 = load i32, i32* @icon_bits, align 4
  %24 = call i32* @CreateIcon(i32 %21, i32 32, i32 32, i32 1, i32 1, i32 %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %1, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %0
  %32 = load i32*, i32** %2, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %31, %0
  br label %205

38:                                               ; preds = %34
  %39 = load i32*, i32** %1, align 8
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %2, align 8
  store i32* %40, i32** %4, align 8
  store i32 -1, i32* %9, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @IImageList_ReplaceIcon(i32* %41, i32 -1, i32* %42, i32* %9)
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi i1 [ false, %38 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = bitcast i32** %5 to i8**
  %56 = call i64 @IImageList_Merge(i32* %53, i32 -1, i32* %54, i32 0, i32 0, i32 0, i32* @IID_IImageList, i8** %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @IImageList_Release(i32* %66)
  br label %68

68:                                               ; preds = %65, %49
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = bitcast i32** %5 to i8**
  %72 = call i64 @IImageList_Merge(i32* %69, i32 0, i32* %70, i32 0, i32 0, i32 0, i32* @IID_IImageList, i8** %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @IImageList_Release(i32* %82)
  br label %84

84:                                               ; preds = %81, %68
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @IImageList_Release(i32* %85)
  %87 = call i32* @pImageList_Create(i32 32, i32 32, i32 0, i32 0, i32 3)
  store i32* %87, i32** %2, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32*, i32** %2, align 8
  store i32* %92, i32** %4, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = bitcast i32** %5 to i8**
  %96 = call i64 @IImageList_Merge(i32* %93, i32 -1, i32* %94, i32 -1, i32 0, i32 0, i32* @IID_IImageList, i8** %95)
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @S_OK, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %84
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @IImageList_Release(i32* %106)
  br label %108

108:                                              ; preds = %105, %84
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = bitcast i32** %5 to i8**
  %112 = call i64 @IImageList_Merge(i32* %109, i32 -1, i32* %110, i32 0, i32 0, i32 0, i32* @IID_IImageList, i8** %111)
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @IImageList_Release(i32* %122)
  br label %124

124:                                              ; preds = %121, %108
  store i32 -1, i32* %9, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = call i64 @IImageList_ReplaceIcon(i32* %125, i32 -1, i32* %126, i32* %9)
  %128 = load i64, i64* @S_OK, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br label %133

133:                                              ; preds = %130, %124
  %134 = phi i1 [ false, %124 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %137 = load i32*, i32** %4, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = bitcast i32** %5 to i8**
  %140 = call i64 @IImageList_Merge(i32* %137, i32 0, i32* %138, i32 0, i32 0, i32 0, i32* @IID_IImageList, i8** %139)
  store i64 %140, i64* %8, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @S_OK, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @S_OK, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %133
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @IImageList_Release(i32* %150)
  br label %152

152:                                              ; preds = %149, %133
  store i32 -1, i32* %9, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i64 @IImageList_ReplaceIcon(i32* %153, i32 -1, i32* %154, i32* %9)
  %156 = load i64, i64* @S_OK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 0
  br label %161

161:                                              ; preds = %158, %152
  %162 = phi i1 [ false, %152 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %165 = load i32*, i32** %3, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = bitcast i32** %5 to i8**
  %168 = call i64 @IImageList_Merge(i32* %165, i32 0, i32* %166, i32 0, i32 0, i32 0, i32* @IID_IImageList, i8** %167)
  store i64 %168, i64* %8, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i64, i64* @S_OK, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @ok(i32 %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* @S_OK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %161
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @IImageList_Release(i32* %178)
  br label %180

180:                                              ; preds = %177, %161
  %181 = load i32*, i32** %3, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = bitcast i32** %5 to i8**
  %184 = call i64 @IImageList_Merge(i32* %181, i32 0, i32* %182, i32 0, i32 8, i32 16, i32* @IID_IImageList, i8** %183)
  store i64 %184, i64* %8, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* @S_OK, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @ok(i32 %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* @S_OK, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %180
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @IImageList_Release(i32* %194)
  br label %196

196:                                              ; preds = %193, %180
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 @IImageList_Release(i32* %197)
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @IImageList_Release(i32* %199)
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @DestroyIcon(i32* %201)
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @DestroyWindow(i32 %203)
  br label %205

205:                                              ; preds = %196, %37
  ret void
}

declare dso_local i32 @create_window(...) #1

declare dso_local i32* @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32* @CreateIcon(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IImageList_ReplaceIcon(i32*, i32, i32*, i32*) #1

declare dso_local i64 @IImageList_Merge(i32*, i32, i32*, i32, i32, i32, i32*, i8**) #1

declare dso_local i32 @IImageList_Release(i32*) #1

declare dso_local i32 @DestroyIcon(i32*) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
