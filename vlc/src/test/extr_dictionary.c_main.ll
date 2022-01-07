; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_dictionary.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_dictionary.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.our_keys = internal global [9 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hella\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"flowmeter\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Frostnipped\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"frostnipped\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"remiform\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"quadrifoliolate\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"singularity\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"unafflicted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 9, i32* %2, align 4
  store i64 0, i64* %4, align 8
  %7 = call i32 @vlc_dictionary_init(i32* %5, i32 0)
  %8 = call i64 @vlc_dictionary_keys_count(i32* %5)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 @vlc_dictionary_is_empty(i32* %5)
  %13 = call i32 @assert(i32 %12)
  %14 = call i8** @vlc_dictionary_all_keys(i32* %5)
  store i8** %14, i8*** %3, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i8**, i8*** %3, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %0
  %24 = phi i1 [ false, %0 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8**, i8*** %3, align 8
  %28 = call i32 @free(i8** %27)
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %64, %23
  %30 = load i64, i64* %4, align 8
  %31 = icmp slt i64 %30, 9
  br i1 %31, label %32, label %67

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds [9 x i8*], [9 x i8*]* @main.our_keys, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @vlc_dictionary_insert(i32* %5, i8* %35, i8* %37)
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds [9 x i8*], [9 x i8*]* @main.our_keys, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @vlc_dictionary_has_key(i32* %5, i8* %41)
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %60, %32
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 9
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [9 x i8*], [9 x i8*]* @main.our_keys, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @vlc_dictionary_has_key(i32* %5, i8* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %47

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %29

67:                                               ; preds = %29
  %68 = call i32 @vlc_dictionary_is_empty(i32* %5)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = call i32 @test_dictionary_validity(i32* %5, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @main.our_keys, i64 0, i64 0), i32 9)
  %74 = load i8*, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @main.our_keys, i64 0, i64 8), align 16
  %75 = call i32 @vlc_dictionary_remove_value_for_key(i32* %5, i8* %74, i32* null, i32* null)
  %76 = call i32 @test_dictionary_validity(i32* %5, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @main.our_keys, i64 0, i64 0), i32 8)
  %77 = call i32 @vlc_dictionary_clear(i32* %5, i32* null, i32* null)
  %78 = call i64 @vlc_dictionary_keys_count(i32* %5)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = call i32 @vlc_dictionary_is_empty(i32* %5)
  %83 = call i32 @assert(i32 %82)
  ret i32 0
}

declare dso_local i32 @vlc_dictionary_init(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_dictionary_keys_count(i32*) #1

declare dso_local i32 @vlc_dictionary_is_empty(i32*) #1

declare dso_local i8** @vlc_dictionary_all_keys(i32*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, i8*) #1

declare dso_local i32 @vlc_dictionary_has_key(i32*, i8*) #1

declare dso_local i32 @test_dictionary_validity(i32*, i8**, i32) #1

declare dso_local i32 @vlc_dictionary_remove_value_for_key(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @vlc_dictionary_clear(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
