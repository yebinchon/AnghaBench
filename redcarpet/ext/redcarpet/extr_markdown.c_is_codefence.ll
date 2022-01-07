; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_codefence.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_codefence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.buf*)* @is_codefence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @is_codefence(i8* %0, i64 %1, %struct.buf* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buf* %2, %struct.buf** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @prefix_codefence(i8* %11, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %186

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %8, align 8
  br label %18

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %127

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 123
  br i1 %47, label %48, label %127

48:                                               ; preds = %41
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %73, %48
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 125
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 10
  br label %71

71:                                               ; preds = %64, %57, %53
  %72 = phi i1 [ false, %57 ], [ false, %53 ], [ %70, %64 ]
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %53

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 125
  br i1 %88, label %89, label %90

89:                                               ; preds = %82, %78
  store i64 0, i64* %4, align 8
  br label %186

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %102, %90
  %92 = load i64, i64* %9, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @_isspace(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %94, %91
  %101 = phi i1 [ false, %91 ], [ %99, %94 ]
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %9, align 8
  br label %91

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %121, %107
  %109 = load i64, i64* %9, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i8*, i8** %10, align 8
  %113 = load i64, i64* %9, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @_isspace(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %111, %108
  %120 = phi i1 [ false, %108 ], [ %118, %111 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %9, align 8
  br label %108

124:                                              ; preds = %119
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %8, align 8
  br label %148

127:                                              ; preds = %41, %34
  br label %128

128:                                              ; preds = %142, %127
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %6, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = call i64 @_isspace(i8 signext %136)
  %138 = icmp ne i64 %137, 0
  %139 = xor i1 %138, true
  br label %140

140:                                              ; preds = %132, %128
  %141 = phi i1 [ false, %128 ], [ %139, %132 ]
  br i1 %141, label %142, label %147

142:                                              ; preds = %140
  %143 = load i64, i64* %9, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %8, align 8
  br label %128

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %124
  %149 = load %struct.buf*, %struct.buf** %7, align 8
  %150 = icmp ne %struct.buf* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i8*, i8** %10, align 8
  %153 = load %struct.buf*, %struct.buf** %7, align 8
  %154 = getelementptr inbounds %struct.buf, %struct.buf* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.buf*, %struct.buf** %7, align 8
  %157 = getelementptr inbounds %struct.buf, %struct.buf* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %151, %148
  br label %159

159:                                              ; preds = %180, %158
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %6, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i8*, i8** %5, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 10
  br label %170

170:                                              ; preds = %163, %159
  %171 = phi i1 [ false, %159 ], [ %169, %163 ]
  br i1 %171, label %172, label %183

172:                                              ; preds = %170
  %173 = load i8*, i8** %5, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = call i64 @_isspace(i8 signext %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %172
  store i64 0, i64* %4, align 8
  br label %186

180:                                              ; preds = %172
  %181 = load i64, i64* %8, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %8, align 8
  br label %159

183:                                              ; preds = %170
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %4, align 8
  br label %186

186:                                              ; preds = %183, %179, %89, %16
  %187 = load i64, i64* %4, align 8
  ret i64 %187
}

declare dso_local i64 @prefix_codefence(i8*, i64) #1

declare dso_local i64 @_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
