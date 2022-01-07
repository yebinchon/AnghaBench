; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file.c_file_save.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file.c_file_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ks_list = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"}:%s\0A\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, %struct.ks_list*)* @file_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_save(%struct.TYPE_7__* %0, i32* %1, i32 %2, %struct.ks_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ks_list*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ks_list* %3, %struct.ks_list** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %10, align 8
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @rewind(i32* %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @truncate0(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vlc_unlink(i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %106

30:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %85, %30
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.ks_list*, %struct.ks_list** %9, align 8
  %34 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %struct.ks_list*, %struct.ks_list** %9, align 8
  %39 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %13, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %85

49:                                               ; preds = %37
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %90

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8**
  %60 = call i64 @values_write(i32* %55, i8** %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %90

63:                                               ; preds = %54
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @vlc_b64_encode_binary(i32 %66, i32 %69)
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  br label %90

74:                                               ; preds = %63
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i64 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 @free(i8* %80)
  br label %90

82:                                               ; preds = %74
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %48
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %31

88:                                               ; preds = %31
  %89 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %79, %73, %62, %53
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @VLC_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @truncate0(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vlc_unlink(i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %24
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @truncate0(i32) #1

declare dso_local i32 @vlc_unlink(i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @values_write(i32*, i8**) #1

declare dso_local i8* @vlc_b64_encode_binary(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
