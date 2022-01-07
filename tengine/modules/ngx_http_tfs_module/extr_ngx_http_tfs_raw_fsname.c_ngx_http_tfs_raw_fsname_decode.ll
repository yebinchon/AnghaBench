; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_raw_fsname.c_ngx_http_tfs_raw_fsname_decode.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_raw_fsname.c_ngx_http_tfs_raw_fsname_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_FILE_NAME_LEN = common dso_local global i32 0, align 4
@dec_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_tfs_raw_fsname_decode(i32* %0, i32* %1) #0 {
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
  br i1 %15, label %16, label %102

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %102

19:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %95, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NGX_HTTP_TFS_FILE_NAME_LEN, align 4
  %23 = sub nsw i32 %22, 2
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %98

25:                                               ; preds = %20
  %26 = load i32*, i32** @dec_table, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %26, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 18
  %37 = load i32*, i32** @dec_table, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %37, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 12
  %49 = add nsw i32 %36, %48
  %50 = load i32*, i32** @dec_table, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %50, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 6
  %62 = add nsw i32 %49, %61
  %63 = load i32*, i32** @dec_table, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %63, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %62, %73
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %13, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %13, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 255
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %13, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %25
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 4
  store i32 %97, i32* %8, align 4
  br label %20

98:                                               ; preds = %20
  %99 = load i32, i32* @NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @xor_mask(i32* %13, i32 %99, i32* %100)
  br label %102

102:                                              ; preds = %98, %16, %2
  %103 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %103)
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
