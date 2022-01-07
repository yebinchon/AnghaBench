; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_parser_SetTextColor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_parser_SetTextColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VLC_EGENERIC = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_5__*)* @parser_SetTextColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parser_SetTextColor(i8* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @VLC_UNUSED(i8* %11)
  %13 = call i32 @skip_space(i8** %5)
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isdigit(i8 zeroext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i64 @parse_digit(i8** %5, i32* %20)
  %22 = load i64, i64* @VLC_EGENERIC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* @VLC_EGENERIC, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %3
  %29 = call i32 @skip_space(i8** %5)
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isdigit(i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = call i64 @parse_digit(i8** %5, i32* %8)
  %36 = load i64, i64* @VLC_EGENERIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* @VLC_EGENERIC, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %83

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %28
  %43 = call i32 @skip_space(i8** %5)
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = call i64 @parse_digit(i8** %5, i32* %9)
  %50 = load i64, i64* @VLC_EGENERIC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* @VLC_EGENERIC, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %83

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %42
  %57 = call i32 @skip_space(i8** %5)
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isdigit(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = call i64 @parse_digit(i8** %5, i32* %10)
  %64 = load i64, i64* @VLC_EGENERIC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* @VLC_EGENERIC, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %83

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %76, 0
  %78 = or i32 %75, %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %70, %66, %52, %38, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @skip_space(i8**) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @parse_digit(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
