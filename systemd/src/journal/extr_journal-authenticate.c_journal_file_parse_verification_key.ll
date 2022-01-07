; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-authenticate.c_journal_file_parse_verification_key.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-authenticate.c_journal_file_parse_verification_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64* }

@FSPRG_RECOMMENDED_SEEDLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%llx-%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_parse_verification_key(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i64, i64* @FSPRG_RECOMMENDED_SEEDLEN, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64* @malloc(i64 %16)
  store i64* %17, i64** %6, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %113

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %73, %23
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  br label %30

38:                                               ; preds = %30
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @unhexchar(i8 signext %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i64*, i64** %6, align 8
  %46 = call i32 @free(i64* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %113

49:                                               ; preds = %38
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @unhexchar(i8 signext %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i64*, i64** %6, align 8
  %59 = call i32 @free(i64* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %113

62:                                               ; preds = %49
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  %65 = load i32, i32* %13, align 4
  %66 = mul nsw i32 %65, 16
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %25

76:                                               ; preds = %25
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 47
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i64*, i64** %6, align 8
  %83 = call i32 @free(i64* %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %113

86:                                               ; preds = %76
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @sscanf(i8* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %11, i64* %12)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 2
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i64*, i64** %6, align 8
  %95 = call i32 @free(i64* %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %113

98:                                               ; preds = %86
  %99 = load i64*, i64** %6, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store i64* %99, i64** %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = mul i64 %105, %106
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %98, %93, %81, %57, %44, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @unhexchar(i8 signext) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
