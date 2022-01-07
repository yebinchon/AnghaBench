; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_path_decode_unique.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_path_decode_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_path_decode_unique(i8* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8** @object_path_is_valid(i8* %14)
  %16 = call i32 @assert(i8** %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i8** @object_path_is_valid(i8* %17)
  %19 = call i32 @assert(i8** %18)
  %20 = load i8**, i8*** %8, align 8
  %21 = call i32 @assert(i8** %20)
  %22 = load i8**, i8*** %9, align 8
  %23 = call i32 @assert(i8** %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @object_path_startswith(i8* %24, i8* %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i8**, i8*** %8, align 8
  store i8* null, i8** %30, align 8
  %31 = load i8**, i8*** %9, align 8
  store i8* null, i8** %31, align 8
  store i32 0, i32* %5, align 4
  br label %69

32:                                               ; preds = %4
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i8**, i8*** %8, align 8
  store i8* null, i8** %38, align 8
  %39 = load i8**, i8*** %9, align 8
  store i8* null, i8** %39, align 8
  store i32 0, i32* %5, align 4
  br label %69

40:                                               ; preds = %32
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @bus_label_unescape_n(i8* %41, i32 %47)
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i8* @bus_label_unescape(i8* %50)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54, %40
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load i8*, i8** %12, align 8
  %66 = load i8**, i8*** %8, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8**, i8*** %9, align 8
  store i8* %67, i8** %68, align 8
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %57, %37, %29
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i8** @object_path_is_valid(i8*) #1

declare dso_local i8* @object_path_startswith(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @bus_label_unescape_n(i8*, i32) #1

declare dso_local i8* @bus_label_unescape(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
