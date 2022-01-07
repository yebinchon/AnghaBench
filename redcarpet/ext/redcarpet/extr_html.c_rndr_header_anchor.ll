; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_header_anchor.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_header_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8*, i64 }

@rndr_header_anchor.STRIPPED = internal global i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [31 x i8] c" -&+$,/:;=?@\22#{}|^~[]`\\*()%.!'\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"part-%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*)* @rndr_header_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_header_anchor(%struct.buf* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %11 = load %struct.buf*, %struct.buf** %4, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.buf*, %struct.buf** %4, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %109, %2
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %112

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 60
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 62
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi i1 [ false, %29 ], [ %39, %33 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %29

45:                                               ; preds = %40
  br label %108

46:                                               ; preds = %21
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 38
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 59
  br label %65

65:                                               ; preds = %58, %54
  %66 = phi i1 [ false, %54 ], [ %64, %58 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %54

70:                                               ; preds = %65
  br label %107

71:                                               ; preds = %46
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @isascii(i8 signext %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i8*, i8** @rndr_header_anchor.STRIPPED, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @strchr(i8* %79, i8 signext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %78, %71
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.buf*, %struct.buf** %3, align 8
  %94 = call i32 @bufputc(%struct.buf* %93, i8 signext 45)
  br label %95

95:                                               ; preds = %92, %89, %86
  store i32 1, i32* %8, align 4
  br label %106

96:                                               ; preds = %78
  %97 = load %struct.buf*, %struct.buf** %3, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @tolower(i8 signext %101)
  %103 = call i32 @bufputc(%struct.buf* %97, i8 signext %102)
  store i32 0, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %96, %95
  br label %107

107:                                              ; preds = %106, %70
  br label %108

108:                                              ; preds = %107, %45
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %7, align 8
  br label %17

112:                                              ; preds = %17
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.buf*, %struct.buf** %3, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %118, %115, %112
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %123
  %127 = load %struct.buf*, %struct.buf** %4, align 8
  %128 = getelementptr inbounds %struct.buf, %struct.buf* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %126
  store i64 5381, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %132

132:                                              ; preds = %147, %131
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load i64, i64* %10, align 8
  %138 = shl i64 %137, 5
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %138, %139
  %141 = load i8*, i8** %5, align 8
  %142 = load i64, i64* %7, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i64
  %146 = add i64 %140, %145
  store i64 %146, i64* %10, align 8
  br label %147

147:                                              ; preds = %136
  %148 = load i64, i64* %7, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %7, align 8
  br label %132

150:                                              ; preds = %132
  %151 = load %struct.buf*, %struct.buf** %3, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @bufprintf(%struct.buf* %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %150, %126, %123
  ret void
}

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @bufprintf(%struct.buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
