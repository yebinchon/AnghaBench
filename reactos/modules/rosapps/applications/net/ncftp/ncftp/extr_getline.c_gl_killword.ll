; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_killword.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_killword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_pos = common dso_local global i32 0, align 4
@gl_buf = common dso_local global i8* null, align 8
@gl_cnt = common dso_local global i32 0, align 4
@gl_killbuf = common dso_local global i8* null, align 8
@gl_prompt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gl_killword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_killword(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @gl_pos, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @gl_pos, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %26, %11
  %13 = load i8*, i8** @gl_buf, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isspace(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @gl_cnt, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %12
  %25 = phi i1 [ false, %12 ], [ %23, %20 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %12

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i8*, i8** @gl_buf, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @gl_cnt, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i1 [ false, %30 ], [ %41, %38 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %30

47:                                               ; preds = %42
  br label %104

48:                                               ; preds = %1
  %49 = load i32, i32* %3, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i8*, i8** @gl_buf, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isspace(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 0
  br label %66

66:                                               ; preds = %63, %55
  %67 = phi i1 [ false, %55 ], [ %65, %63 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %3, align 4
  br label %55

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %85, %71
  %73 = load i8*, i8** @gl_buf, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isspace(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %3, align 4
  %82 = icmp sgt i32 %81, 0
  br label %83

83:                                               ; preds = %80, %72
  %84 = phi i1 [ false, %72 ], [ %82, %80 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %3, align 4
  br label %72

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @gl_cnt, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i8*, i8** @gl_buf, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @isspace(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %92, %88
  br label %104

104:                                              ; preds = %103, %47
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* %3, align 4
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i8*, i8** @gl_killbuf, align 8
  %114 = load i8*, i8** @gl_buf, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = call i32 @memcpy(i8* %113, i8* %117, i64 %121)
  %123 = load i8*, i8** @gl_killbuf, align 8
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %123, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** @gl_killbuf, align 8
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %4, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %129, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = call i64 @isspace(i8 signext %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %112
  %140 = load i8*, i8** @gl_killbuf, align 8
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %140, i64 %145
  store i8 0, i8* %146, align 1
  br label %147

147:                                              ; preds = %139, %112
  %148 = load i32, i32* @gl_prompt, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @gl_fixup(i32 %148, i32 -1, i32 %149)
  store i32 0, i32* %6, align 4
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %4, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %160, %147
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = call i32 @gl_del(i32 0, i32 0)
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %154

163:                                              ; preds = %154
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @gl_fixup(i32, i32, i32) #1

declare dso_local i32 @gl_del(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
