; ModuleID = '/home/carl/AnghaBench/tig/src/extr_util.c_get_author_initials.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_util.c_get_author_initials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_author_initials.initials = internal global [256 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_author_initials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_author_initials(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 0)
  store i8* %8, i8** %4, align 8
  %9 = call i32 @memset(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_author_initials.initials, i64 0, i64 0), i32 0, i32 256)
  br label %10

10:                                               ; preds = %159, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %163

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %45, %14
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 @isspace(i32 %22) #3
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 @ispunct(i32 %28) #3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 64
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br label %41

41:                                               ; preds = %36, %31, %25, %19
  %42 = phi i1 [ true, %31 ], [ true, %25 ], [ true, %19 ], [ %40, %36 ]
  br label %43

43:                                               ; preds = %41, %15
  %44 = phi i1 [ false, %15 ], [ %42, %41 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %2, align 8
  br label %15

48:                                               ; preds = %43
  %49 = load i8*, i8** %2, align 8
  %50 = call zeroext i8 @utf8_char_length(i8* %49)
  store i8 %50, i8* %5, align 1
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i64
  %53 = load i64, i64* %3, align 8
  %54 = sub i64 255, %53
  %55 = icmp uge i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %163

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i8, i8* %5, align 1
  %60 = add i8 %59, -1
  store i8 %60, i8* %5, align 1
  %61 = icmp ne i8 %59, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %2, align 8
  %65 = load i8, i8* %63, align 1
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %3, align 8
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* @get_author_initials.initials, i64 0, i64 %66
  store i8 %65, i8* %68, align 1
  br label %58

69:                                               ; preds = %58
  %70 = load i64, i64* %3, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %158, %69
  %72 = load i8*, i8** %2, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load i8*, i8** %2, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 @isspace(i32 %78) #3
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %2, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 @ispunct(i32 %84) #3
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %2, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 64
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %2, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 45
  br label %97

97:                                               ; preds = %92, %87, %81, %75
  %98 = phi i1 [ true, %87 ], [ true, %81 ], [ true, %75 ], [ %96, %92 ]
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %97, %71
  %101 = phi i1 [ false, %71 ], [ %99, %97 ]
  br i1 %101, label %102, label %159

102:                                              ; preds = %100
  %103 = load i8*, i8** %2, align 8
  %104 = call zeroext i8 @utf8_char_length(i8* %103)
  store i8 %104, i8* %5, align 1
  %105 = load i8, i8* %5, align 1
  %106 = zext i8 %105 to i64
  %107 = load i64, i64* %6, align 8
  %108 = sub i64 255, %107
  %109 = icmp uge i64 %106, %108
  br i1 %109, label %110, label %146

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %142, %110
  %112 = load i8*, i8** %2, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = icmp ult i8* %112, %113
  br i1 %114, label %115, label %140

115:                                              ; preds = %111
  %116 = load i8*, i8** %2, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = call i32 @isspace(i32 %118) #3
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %2, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 @ispunct(i32 %124) #3
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %2, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 64
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %2, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 45
  br label %137

137:                                              ; preds = %132, %127, %121, %115
  %138 = phi i1 [ true, %127 ], [ true, %121 ], [ true, %115 ], [ %136, %132 ]
  %139 = xor i1 %138, true
  br label %140

140:                                              ; preds = %137, %111
  %141 = phi i1 [ false, %111 ], [ %139, %137 ]
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = load i8*, i8** %2, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %2, align 8
  br label %111

145:                                              ; preds = %140
  br label %159

146:                                              ; preds = %102
  br label %147

147:                                              ; preds = %151, %146
  %148 = load i8, i8* %5, align 1
  %149 = add i8 %148, -1
  store i8 %149, i8* %5, align 1
  %150 = icmp ne i8 %148, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i8*, i8** %2, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %2, align 8
  %154 = load i8, i8* %152, align 1
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %6, align 8
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* @get_author_initials.initials, i64 0, i64 %155
  store i8 %154, i8* %157, align 1
  br label %147

158:                                              ; preds = %147
  br label %71

159:                                              ; preds = %145, %100
  %160 = load i64, i64* %6, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %6, align 8
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* @get_author_initials.initials, i64 0, i64 %160
  store i8 0, i8* %162, align 1
  br label %10

163:                                              ; preds = %56, %10
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_author_initials.initials, i64 0, i64 0)
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @ispunct(i32) #2

declare dso_local zeroext i8 @utf8_char_length(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
