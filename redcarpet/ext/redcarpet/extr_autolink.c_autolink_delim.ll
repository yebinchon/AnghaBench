; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_autolink_delim.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_autolink_delim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"?!.,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64)* @autolink_delim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @autolink_delim(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 0, i8* %11, align 1
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %31, %4
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 60
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %12, align 8
  store i64 %29, i64* %7, align 8
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %12, align 8
  br label %17

34:                                               ; preds = %28, %17
  br label %35

35:                                               ; preds = %95, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %96

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %43)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %7, align 8
  br label %95

49:                                               ; preds = %38
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 59
  br i1 %56, label %57, label %93

57:                                               ; preds = %49
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, 2
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %72, %57
  %61 = load i64, i64* %13, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @isalpha(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %63, %60
  %71 = phi i1 [ false, %60 ], [ %69, %63 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %13, align 8
  br label %60

75:                                               ; preds = %70
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub i64 %77, 2
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 38
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* %13, align 8
  store i64 %88, i64* %7, align 8
  br label %92

89:                                               ; preds = %80, %75
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %89, %87
  br label %94

93:                                               ; preds = %49
  br label %96

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %46
  br label %35

96:                                               ; preds = %93, %35
  %97 = load i64, i64* %7, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i64 0, i64* %5, align 8
  br label %160

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %10, align 1
  %106 = load i8, i8* %10, align 1
  %107 = sext i8 %106 to i32
  switch i32 %107, label %113 [
    i32 34, label %108
    i32 39, label %109
    i32 41, label %110
    i32 93, label %111
    i32 125, label %112
  ]

108:                                              ; preds = %100
  store i8 34, i8* %11, align 1
  br label %113

109:                                              ; preds = %100
  store i8 39, i8* %11, align 1
  br label %113

110:                                              ; preds = %100
  store i8 40, i8* %11, align 1
  br label %113

111:                                              ; preds = %100
  store i8 91, i8* %11, align 1
  br label %113

112:                                              ; preds = %100
  store i8 123, i8* %11, align 1
  br label %113

113:                                              ; preds = %100, %112, %111, %110, %109, %108
  %114 = load i8, i8* %11, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %118

118:                                              ; preds = %147, %117
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %150

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %16, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* %11, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load i64, i64* %15, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %15, align 8
  br label %147

134:                                              ; preds = %122
  %135 = load i8*, i8** %6, align 8
  %136 = load i64, i64* %16, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8, i8* %10, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %14, align 8
  br label %146

146:                                              ; preds = %143, %134
  br label %147

147:                                              ; preds = %146, %131
  %148 = load i64, i64* %16, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %16, align 8
  br label %118

150:                                              ; preds = %118
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %15, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i64, i64* %7, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %7, align 8
  br label %157

157:                                              ; preds = %154, %150
  br label %158

158:                                              ; preds = %157, %113
  %159 = load i64, i64* %7, align 8
  store i64 %159, i64* %5, align 8
  br label %160

160:                                              ; preds = %158, %99
  %161 = load i64, i64* %5, align 8
  ret i64 %161
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
