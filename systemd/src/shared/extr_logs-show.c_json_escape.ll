; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_json_escape.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_json_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OUTPUT_SHOW_ALL = common dso_local global i32 0, align 4
@JSON_THRESHOLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_escape(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @OUTPUT_SHOW_ALL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @JSON_THRESHOLD, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %117

25:                                               ; preds = %18, %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @OUTPUT_SHOW_ALL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @utf8_is_printable(i8* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %56, %35
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 @fprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %56

50:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 @fprintf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %7, align 8
  br label %38

61:                                               ; preds = %38
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  br label %116

64:                                               ; preds = %30, %25
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @fputc(i8 signext 34, i8* %65)
  br label %67

67:                                               ; preds = %108, %64
  %68 = load i64, i64* %7, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @IN_SET(i8 signext %72, i8 signext 34, i8 signext 92)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @fputc(i8 signext 92, i8* %76)
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @fputc(i8 signext %79, i8* %80)
  br label %108

82:                                               ; preds = %70
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %107

90:                                               ; preds = %82
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp slt i32 %93, 32
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 @fprintf(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  br label %106

101:                                              ; preds = %90
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @fputc(i8 signext %103, i8* %104)
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %75
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %7, align 8
  br label %67

113:                                              ; preds = %67
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @fputc(i8 signext 34, i8* %114)
  br label %116

116:                                              ; preds = %113, %61
  br label %117

117:                                              ; preds = %116, %22
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @fputs(i8*, i8*) #1

declare dso_local i32 @utf8_is_printable(i8*, i64) #1

declare dso_local i32 @fprintf(i8*, i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i8*) #1

declare dso_local i64 @IN_SET(i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
