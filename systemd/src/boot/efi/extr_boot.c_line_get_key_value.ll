; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_boot.c_line_get_key_value.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_boot.c_line_get_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*, i8**, i8**)* @line_get_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @line_get_key_value(i8* %0, i8* %1, i32* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  br label %15

15:                                               ; preds = %136, %111, %68, %5
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i8* null, i8** %6, align 8
  br label %186

26:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @strchra(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %40)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %35, %27
  %45 = phi i1 [ false, %27 ], [ %43, %35 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %27

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %61, %49
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %15

69:                                               ; preds = %65
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %79, %69
  %75 = load i8*, i8** %12, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @strchra(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %13, align 4
  br label %74

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %99, %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @strchra(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %88, %85
  %98 = phi i1 [ false, %85 ], [ %96, %88 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %13, align 4
  br label %85

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %12, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 35
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %15

112:                                              ; preds = %102
  %113 = load i8*, i8** %12, align 8
  store i8* %113, i8** %14, align 8
  br label %114

114:                                              ; preds = %128, %112
  %115 = load i8*, i8** %14, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i8, i8* %121, align 1
  %123 = call i64 @strchra(i8* %120, i8 signext %122)
  %124 = icmp ne i64 %123, 0
  %125 = xor i1 %124, true
  br label %126

126:                                              ; preds = %119, %114
  %127 = phi i1 [ false, %114 ], [ %125, %119 ]
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %14, align 8
  br label %114

131:                                              ; preds = %126
  %132 = load i8*, i8** %14, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %15

137:                                              ; preds = %131
  %138 = load i8*, i8** %14, align 8
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %14, align 8
  br label %141

141:                                              ; preds = %154, %137
  %142 = load i8*, i8** %14, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = load i8, i8* %148, align 1
  %150 = call i64 @strchra(i8* %147, i8 signext %149)
  %151 = icmp ne i64 %150, 0
  br label %152

152:                                              ; preds = %146, %141
  %153 = phi i1 [ false, %141 ], [ %151, %146 ]
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i8*, i8** %14, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %14, align 8
  br label %141

157:                                              ; preds = %152
  %158 = load i8*, i8** %14, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 34
  br i1 %162, label %163, label %180

163:                                              ; preds = %157
  %164 = load i8*, i8** %12, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 34
  br i1 %171, label %172, label %180

172:                                              ; preds = %163
  %173 = load i8*, i8** %14, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %14, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 0, i8* %179, align 1
  br label %180

180:                                              ; preds = %172, %163, %157
  %181 = load i8*, i8** %12, align 8
  %182 = load i8**, i8*** %10, align 8
  store i8* %181, i8** %182, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = load i8**, i8*** %11, align 8
  store i8* %183, i8** %184, align 8
  %185 = load i8*, i8** %12, align 8
  store i8* %185, i8** %6, align 8
  br label %186

186:                                              ; preds = %180, %25
  %187 = load i8*, i8** %6, align 8
  ret i8* %187
}

declare dso_local i64 @strchra(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
