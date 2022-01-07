; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_fse_compress.c_FSE_compress_wksp.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_fse_compress.c_FSE_compress_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@FSE_DEFAULT_TABLELOG = common dso_local global i32 0, align 4
@maxCount = common dso_local global i64 0, align 8
@nc_err = common dso_local global i64 0, align 8
@cSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_compress_wksp(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %18, align 8
  %31 = load i32*, i32** %18, align 8
  store i32* %31, i32** %19, align 8
  %32 = load i32*, i32** %18, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %20, align 8
  %35 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %21, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %22, align 8
  %40 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %41 = add nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %23, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %24, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @FSE_CTABLE_SIZE_U32(i32 %46, i32 %47)
  store i64 %48, i64* %25, align 8
  %49 = load i32*, i32** %24, align 8
  %50 = load i64, i64* %25, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = bitcast i32* %51 to i8*
  store i8* %52, i8** %26, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %25, align 8
  %55 = mul i64 %54, 4
  %56 = sub i64 %53, %55
  store i64 %56, i64* %27, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @FSE_WKSP_SIZE_U32(i32 %58, i32 %59)
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %8
  %63 = load i32, i32* @tableLog_tooLarge, align 4
  %64 = call i64 @ERROR(i32 %63)
  store i64 %64, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

65:                                               ; preds = %8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ule i64 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i64 0, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @FSE_DEFAULT_TABLELOG, align 4
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i64, i64* @maxCount, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i8*, i8** %26, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = call i32 @HIST_count_wksp(i32* %39, i32* %14, i8* %81, i64 %82, i32* %84)
  %86 = call i32 @CHECK_V_F(i64 %80, i32 %85)
  %87 = load i64, i64* @maxCount, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  store i64 1, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

91:                                               ; preds = %79
  %92 = load i64, i64* @maxCount, align 8
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i64 0, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

95:                                               ; preds = %91
  %96 = load i64, i64* @maxCount, align 8
  %97 = load i64, i64* %13, align 8
  %98 = lshr i64 %97, 7
  %99 = icmp ult i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i64 0, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = load i64, i64* %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @FSE_optimalTableLog(i32 %102, i64 %103, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @FSE_normalizeCount(i32* %43, i32 %106, i32* %39, i64 %107, i32 %108)
  %110 = call i32 @CHECK_F(i32 %109)
  %111 = load i64, i64* @nc_err, align 8
  %112 = load i32*, i32** %19, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @FSE_writeNCount(i32* %112, i32 %119, i32* %43, i32 %120, i32 %121)
  %123 = call i32 @CHECK_V_F(i64 %111, i32 %122)
  %124 = load i64, i64* @nc_err, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 %124
  store i32* %126, i32** %19, align 8
  %127 = load i32*, i32** %24, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i8*, i8** %26, align 8
  %131 = load i64, i64* %27, align 8
  %132 = call i32 @FSE_buildCTable_wksp(i32* %127, i32* %43, i32 %128, i32 %129, i8* %130, i64 %131)
  %133 = call i32 @CHECK_F(i32 %132)
  %134 = load i64, i64* @cSize, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = load i32*, i32** %20, align 8
  %137 = load i32*, i32** %19, align 8
  %138 = ptrtoint i32* %136 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = load i8*, i8** %12, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i32*, i32** %24, align 8
  %146 = call i32 @FSE_compress_usingCTable(i32* %135, i32 %142, i8* %143, i64 %144, i32* %145)
  %147 = call i32 @CHECK_V_F(i64 %134, i32 %146)
  %148 = load i64, i64* @cSize, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %101
  store i64 0, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

151:                                              ; preds = %101
  %152 = load i64, i64* @cSize, align 8
  %153 = load i32*, i32** %19, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 %152
  store i32* %154, i32** %19, align 8
  %155 = load i32*, i32** %19, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = ptrtoint i32* %155 to i64
  %158 = ptrtoint i32* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 4
  %161 = load i64, i64* %13, align 8
  %162 = sub i64 %161, 1
  %163 = icmp uge i64 %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  store i64 0, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

165:                                              ; preds = %151
  %166 = load i32*, i32** %19, align 8
  %167 = load i32*, i32** %18, align 8
  %168 = ptrtoint i32* %166 to i64
  %169 = ptrtoint i32* %167 to i64
  %170 = sub i64 %168, %169
  %171 = sdiv exact i64 %170, 4
  store i64 %171, i64* %9, align 8
  store i32 1, i32* %28, align 4
  br label %172

172:                                              ; preds = %165, %164, %150, %100, %94, %90, %68, %62
  %173 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i64, i64* %9, align 8
  ret i64 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FSE_CTABLE_SIZE_U32(i32, i32) #2

declare dso_local i64 @FSE_WKSP_SIZE_U32(i32, i32) #2

declare dso_local i64 @ERROR(i32) #2

declare dso_local i32 @CHECK_V_F(i64, i32) #2

declare dso_local i32 @HIST_count_wksp(i32*, i32*, i8*, i64, i32*) #2

declare dso_local i32 @FSE_optimalTableLog(i32, i64, i32) #2

declare dso_local i32 @CHECK_F(i32) #2

declare dso_local i32 @FSE_normalizeCount(i32*, i32, i32*, i64, i32) #2

declare dso_local i32 @FSE_writeNCount(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @FSE_buildCTable_wksp(i32*, i32*, i32, i32, i8*, i64) #2

declare dso_local i32 @FSE_compress_usingCTable(i32*, i32, i8*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
