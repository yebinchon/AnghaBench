; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_parse_key_value.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_parse_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error parsing UTF-8 bytes: %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Ignoring text after key mapping: %.*s\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8**, i64, i8*, i8*)* @parse_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_key_value(%struct.key* %0, i8** %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.key* %0, %struct.key** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i8*, i8** %10, align 8
  br label %24

19:                                               ; preds = %5
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i8* [ %18, %17 ], [ %23, %19 ]
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @utf8_char_length(i8* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i64 @utf8_to_unicode(i8* %36, i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %24
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 %42, i32* %6, align 4
  br label %82

43:                                               ; preds = %35
  %44 = load %struct.key*, %struct.key** %7, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @strncpy(i32 %47, i8* %48, i64 %49)
  %51 = load %struct.key*, %struct.key** %7, align 8
  %52 = getelementptr inbounds %struct.key, %struct.key* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %43
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8**, i8*** %8, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @success(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %73, i8* %74)
  store i32 %75, i32* %6, align 4
  br label %82

76:                                               ; preds = %62, %56
  br label %80

77:                                               ; preds = %43
  %78 = load i8*, i8** %14, align 8
  %79 = load i8**, i8*** %8, align 8
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i32, i32* @SUCCESS, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %67, %40
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i64 @utf8_char_length(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @utf8_to_unicode(i8*, i64) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @success(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
