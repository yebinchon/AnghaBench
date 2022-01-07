; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_parser_DataSharedMem.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_commands.c_parser_DataSharedMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_3__*)* @parser_DataSharedMem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parser_DataSharedMem(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %8 = call i32 @skip_space(i8** %5)
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @isdigit(i8 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = call i64 @parse_digit(i8** %5, i32* %15)
  %17 = load i64, i64* @VLC_EGENERIC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i64, i64* @VLC_EGENERIC, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %3
  %24 = call i32 @skip_space(i8** %5)
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isdigit(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = call i64 @parse_digit(i8** %5, i32* %31)
  %33 = load i64, i64* @VLC_EGENERIC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* @VLC_EGENERIC, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %90

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %23
  %40 = call i32 @skip_space(i8** %5)
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isdigit(i8 zeroext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = call i64 @parse_digit(i8** %5, i32* %47)
  %49 = load i64, i64* @VLC_EGENERIC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* @VLC_EGENERIC, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %90

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %39
  %56 = call i32 @skip_space(i8** %5)
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isascii(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = bitcast i32* %63 to i8*
  %65 = call i64 @parse_char(i8** %5, i8** %6, i32 4, i8* %64)
  %66 = load i64, i64* @VLC_EGENERIC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i64, i64* @VLC_EGENERIC, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %90

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %55
  %73 = call i32 @skip_space(i8** %5)
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isdigit(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i64 @parse_digit(i8** %5, i32* %80)
  %82 = load i64, i64* @VLC_EGENERIC, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i64, i64* @VLC_EGENERIC, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %84, %68, %51, %35, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @skip_space(i8**) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @parse_digit(i8**, i32*) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @parse_char(i8**, i8**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
