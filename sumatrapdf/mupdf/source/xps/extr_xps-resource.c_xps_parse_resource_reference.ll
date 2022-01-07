; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-resource.c_xps_parse_resource_reference.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-resource.c_xps_parse_resource_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"{StaticResource \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i8**)* @xps_parse_resource_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xps_parse_resource_reference(i32* %0, i32* %1, i32* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %37

19:                                               ; preds = %5
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 16
  %23 = call i32 @fz_strlcpy(i8* %20, i8* %22, i32 1024)
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %25 = call i8* @strrchr(i8* %24, i8 signext 125)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i8*, i8** %13, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %35 = load i8**, i8*** %11, align 8
  %36 = call i32* @xps_lookup_resource(i32* %31, i32* %32, i32* %33, i8* %34, i8** %35)
  store i32* %36, i32** %6, align 8
  br label %37

37:                                               ; preds = %30, %18
  %38 = load i32*, i32** %6, align 8
  ret i32* %38
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @xps_lookup_resource(i32*, i32*, i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
