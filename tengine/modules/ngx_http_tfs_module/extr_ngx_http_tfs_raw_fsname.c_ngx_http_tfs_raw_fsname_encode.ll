; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_raw_fsname.c_ngx_http_tfs_raw_fsname_encode.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_raw_fsname.c_ngx_http_tfs_raw_fsname_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN = common dso_local global i32 0, align 4
@enc_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_tfs_raw_fsname_encode(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %99

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %99

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN, align 4
  %22 = call i32 @xor_mask(i32* %20, i32 %21, i32* %13)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %95, %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %13, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = and i32 %32, 16711680
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %13, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = and i32 %39, 65280
  %41 = add nsw i32 %33, %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %13, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = add nsw i32 %41, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** @enc_table, align 8
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 18
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load i32*, i32** @enc_table, align 8
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 12
  %63 = and i32 %62, 63
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32*, i32** @enc_table, align 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 6
  %75 = and i32 %74, 63
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  %84 = load i32*, i32** @enc_table, align 8
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 63
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %27
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 3
  store i32 %97, i32* %8, align 4
  br label %23

98:                                               ; preds = %23
  br label %99

99:                                               ; preds = %98, %16, %2
  %100 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xor_mask(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
