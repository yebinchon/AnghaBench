; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_extern_script.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_extern_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@parse_extern_script.wine_schemaW = internal constant [5 x i8] c"wine:", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @parse_extern_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_extern_script(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @strlenW(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = icmp ugt i64 %12, 5
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @memcmp(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_extern_script.wine_schemaW, i64 0, i64 0), i32 5)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 5
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %14, %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @create_uri(i32 %24, i32 0, i32** %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %53

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @bind_script_to_text(i32 %33, i32* %34, i32* %35, i8** %7)
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @IUri_Release(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %30
  br label %53

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @parse_elem_text(%struct.TYPE_4__* %47, i32* %48, i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @heap_free(i8* %51)
  br label %53

53:                                               ; preds = %46, %45, %29
  ret void
}

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @create_uri(i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @bind_script_to_text(i32, i32*, i32*, i8**) #1

declare dso_local i32 @IUri_Release(i32*) #1

declare dso_local i32 @parse_elem_text(%struct.TYPE_4__*, i32*, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
