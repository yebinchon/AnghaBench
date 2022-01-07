; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_get_guid_from_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_get_guid_from_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.get_guid_from_type.text_javascriptW = private unnamed_addr constant [16 x i8] c"text/javascript\00", align 16
@__const.get_guid_from_type.text_jscriptW = private unnamed_addr constant [13 x i8] c"text/jscript\00", align 1
@__const.get_guid_from_type.text_vbscriptW = private unnamed_addr constant [14 x i8] c"text/vbscript\00", align 1
@CLSID_JScript = common dso_local global i32 0, align 4
@CLSID_VBScript = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown type %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @get_guid_from_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_guid_from_type(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca [13 x i8], align 1
  %8 = alloca [14 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = bitcast [16 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.get_guid_from_type.text_javascriptW, i32 0, i32 0), i64 16, i1 false)
  %10 = bitcast [13 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.get_guid_from_type.text_jscriptW, i32 0, i32 0), i64 13, i1 false)
  %11 = bitcast [14 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.get_guid_from_type.text_vbscriptW, i32 0, i32 0), i64 14, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %14 = call i32 @strcmpiW(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %19 = call i32 @strcmpiW(i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @CLSID_JScript, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %38

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %27 = call i32 @strcmpiW(i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @CLSID_VBScript, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @debugstr_w(i32 %33)
  %35 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmpiW(i32, i8*) #2

declare dso_local i32 @FIXME(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
