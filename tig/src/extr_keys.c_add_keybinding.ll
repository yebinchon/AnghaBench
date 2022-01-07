; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_add_keybinding.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_add_keybinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i64, %struct.keybinding** }
%struct.keybinding = type { i32, i64, i32 }
%struct.key = type { i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Key binding for %s and %s conflict; keys using Ctrl are case insensitive\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate keybinding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_keybinding(%struct.keymap* %0, i32 %1, %struct.key* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.keymap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.keybinding*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.keymap* %0, %struct.keymap** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.key* %2, %struct.key** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @SIZEOF_STR, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %22

22:                                               ; preds = %71, %4
  %23 = load i64, i64* %14, align 8
  %24 = load %struct.keymap*, %struct.keymap** %6, align 8
  %25 = getelementptr inbounds %struct.keymap, %struct.keymap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %22
  %29 = load %struct.keymap*, %struct.keymap** %6, align 8
  %30 = getelementptr inbounds %struct.keymap, %struct.keymap* %29, i32 0, i32 1
  %31 = load %struct.keybinding**, %struct.keybinding*** %30, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds %struct.keybinding*, %struct.keybinding** %31, i64 %32
  %34 = load %struct.keybinding*, %struct.keybinding** %33, align 8
  %35 = load %struct.key*, %struct.key** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @keybinding_equals(%struct.keybinding* %34, %struct.key* %35, i64 %36, i32* %13)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %28
  %40 = load %struct.keymap*, %struct.keymap** %6, align 8
  %41 = getelementptr inbounds %struct.keymap, %struct.keymap* %40, i32 0, i32 1
  %42 = load %struct.keybinding**, %struct.keybinding*** %41, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds %struct.keybinding*, %struct.keybinding** %42, i64 %43
  %45 = load %struct.keybinding*, %struct.keybinding** %44, align 8
  %46 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.keymap*, %struct.keymap** %6, align 8
  %50 = getelementptr inbounds %struct.keymap, %struct.keymap* %49, i32 0, i32 1
  %51 = load %struct.keybinding**, %struct.keybinding*** %50, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds %struct.keybinding*, %struct.keybinding** %51, i64 %52
  %54 = load %struct.keybinding*, %struct.keybinding** %53, align 8
  %55 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %39
  %59 = load i32, i32* @SUCCESS, align 4
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %127

60:                                               ; preds = %39
  %61 = load i32, i32* %15, align 4
  %62 = call i8* @get_request_name(i32 %61)
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = call i32 @string_ncopy(i8* %21, i8* %63, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @get_request_name(i32 %67)
  %69 = call i32 @error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %68)
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %127

70:                                               ; preds = %28
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %14, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %14, align 8
  br label %22

74:                                               ; preds = %22
  %75 = load %struct.keymap*, %struct.keymap** %6, align 8
  %76 = getelementptr inbounds %struct.keymap, %struct.keymap* %75, i32 0, i32 1
  %77 = load %struct.keybinding**, %struct.keybinding*** %76, align 8
  %78 = load %struct.keymap*, %struct.keymap** %6, align 8
  %79 = getelementptr inbounds %struct.keymap, %struct.keymap* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  %82 = mul i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = call %struct.keybinding** @realloc(%struct.keybinding** %77, i32 %83)
  %85 = load %struct.keymap*, %struct.keymap** %6, align 8
  %86 = getelementptr inbounds %struct.keymap, %struct.keymap* %85, i32 0, i32 1
  store %struct.keybinding** %84, %struct.keybinding*** %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %87, 1
  %89 = mul i64 4, %88
  %90 = add i64 24, %89
  %91 = trunc i64 %90 to i32
  %92 = call %struct.keybinding* @calloc(i32 1, i32 %91)
  store %struct.keybinding* %92, %struct.keybinding** %10, align 8
  %93 = load %struct.keymap*, %struct.keymap** %6, align 8
  %94 = getelementptr inbounds %struct.keymap, %struct.keymap* %93, i32 0, i32 1
  %95 = load %struct.keybinding**, %struct.keybinding*** %94, align 8
  %96 = icmp ne %struct.keybinding** %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %74
  %98 = load %struct.keybinding*, %struct.keybinding** %10, align 8
  %99 = icmp ne %struct.keybinding* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %97, %74
  %101 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %97
  %103 = load %struct.keybinding*, %struct.keybinding** %10, align 8
  %104 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.key*, %struct.key** %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i32 %105, %struct.key* %106, i32 %109)
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.keybinding*, %struct.keybinding** %10, align 8
  %113 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.keybinding*, %struct.keybinding** %10, align 8
  %116 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.keybinding*, %struct.keybinding** %10, align 8
  %118 = load %struct.keymap*, %struct.keymap** %6, align 8
  %119 = getelementptr inbounds %struct.keymap, %struct.keymap* %118, i32 0, i32 1
  %120 = load %struct.keybinding**, %struct.keybinding*** %119, align 8
  %121 = load %struct.keymap*, %struct.keymap** %6, align 8
  %122 = getelementptr inbounds %struct.keymap, %struct.keymap* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = getelementptr inbounds %struct.keybinding*, %struct.keybinding** %120, i64 %123
  store %struct.keybinding* %117, %struct.keybinding** %125, align 8
  %126 = load i32, i32* @SUCCESS, align 4
  store i32 %126, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %127

127:                                              ; preds = %102, %60, %58
  %128 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @keybinding_equals(%struct.keybinding*, %struct.key*, i64, i32*) #2

declare dso_local i8* @get_request_name(i32) #2

declare dso_local i32 @string_ncopy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @error(i8*, i8*, i8*) #2

declare dso_local %struct.keybinding** @realloc(%struct.keybinding**, i32) #2

declare dso_local %struct.keybinding* @calloc(i32, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @memcpy(i32, %struct.key*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
