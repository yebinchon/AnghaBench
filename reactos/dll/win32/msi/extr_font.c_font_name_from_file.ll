; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_font.c_font_name_from_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_font.c_font_name_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@font_name_from_file.truetypeW = internal constant [12 x i8] c" (TrueType)\00", align 1
@NAME_ID_FULL_FONT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"empty font name\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @font_name_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @font_name_from_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @NAME_ID_FULL_FONT_NAME, align 4
  %8 = call i8* @load_ttf_name_id(i8* %6, i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @msi_free(i8* %17)
  store i8* null, i8** %2, align 8
  br label %38

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlenW(i8* %20)
  %22 = call i32 @strlenW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @font_name_from_file.truetypeW, i64 0, i64 0))
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* @msi_alloc(i32 %27)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strcpyW(i8* %29, i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcatW(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @font_name_from_file.truetypeW, i64 0, i64 0))
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @msi_free(i8* %34)
  br label %36

36:                                               ; preds = %19, %1
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i8* @load_ttf_name_id(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
