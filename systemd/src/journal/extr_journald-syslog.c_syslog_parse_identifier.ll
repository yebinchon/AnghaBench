; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-syslog.c_syslog_parse_identifier.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-syslog.c_syslog_parse_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WHITESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syslog_parse_identifier(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @assert(i8** %13)
  %15 = load i8**, i8*** %6, align 8
  %16 = call i32 @assert(i8** %15)
  %17 = load i8**, i8*** %7, align 8
  %18 = call i32 @assert(i8** %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @WHITESPACE, align 4
  %23 = call i32 @strspn(i8* %21, i32 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @WHITESPACE, align 4
  %29 = call i64 @strcspn(i8* %27, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ule i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %3
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 58
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %3
  store i64 0, i64* %4, align 8
  br label %131

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 93
  br i1 %54, label %55, label %90

55:                                               ; preds = %47
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %86, %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 91
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sub i64 %70, %71
  %73 = sub i64 %72, 2
  %74 = call i8* @strndup(i8* %69, i64 %73)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i8*, i8** %9, align 8
  %79 = load i8**, i8*** %7, align 8
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %77, %65
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %10, align 8
  br label %89

82:                                               ; preds = %58
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %89

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %12, align 8
  br label %58

89:                                               ; preds = %85, %80
  br label %90

90:                                               ; preds = %89, %47, %41
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i8* @strndup(i8* %91, i64 %92)
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i8*, i8** %9, align 8
  %98 = load i8**, i8*** %6, align 8
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load i32, i32* @WHITESPACE, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @strchr(i32 %107, i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %117

117:                                              ; preds = %114, %106, %99
  %118 = load i8*, i8** %8, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = ptrtoint i8* %118 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %123, %124
  store i64 %125, i64* %10, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8**, i8*** %5, align 8
  store i8* %128, i8** %129, align 8
  %130 = load i64, i64* %10, align 8
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %117, %40
  %132 = load i64, i64* %4, align 8
  ret i64 %132
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i32) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
