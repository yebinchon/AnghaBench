; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_lfn.c_cnv_unicode.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_lfn.c_cnv_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem_queue = common dso_local global i32 0, align 4
@fat_uni2esc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @cnv_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cnv_unicode(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %73, %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv i64 %19, 2
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ true, %24 ], [ %35, %30 ]
  br label %38

38:                                               ; preds = %36, %14
  %39 = phi i1 [ false, %14 ], [ %37, %36 ]
  br i1 %39, label %40, label %76

40:                                               ; preds = %38
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @BYTES_TO_WCHAR(i8 zeroext %43, i8 zeroext %46)
  %48 = call i64 @mbslen(i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = icmp ne i64 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  br label %72

56:                                               ; preds = %40
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @UNICODE_CONVERTABLE(i8 zeroext %59, i8 zeroext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %50
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %7, align 8
  br label %14

76:                                               ; preds = %38
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i8* @qalloc(i32* @mem_queue, i32 %81)
  br label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i8* @alloc(i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i8* [ %82, %79 ], [ %86, %83 ]
  store i8* %88, i8** %8, align 8
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %4, align 8
  store i8* %89, i8** %7, align 8
  br label %90

90:                                               ; preds = %191, %87
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv i64 %95, 2
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %90
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %106, %100
  %113 = phi i1 [ true, %100 ], [ %111, %106 ]
  br label %114

114:                                              ; preds = %112, %90
  %115 = phi i1 [ false, %90 ], [ %113, %112 ]
  br i1 %115, label %116, label %194

116:                                              ; preds = %114
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @BYTES_TO_WCHAR(i8 zeroext %120, i8 zeroext %123)
  %125 = call i64 @wctombs(i8* %117, i32 %124)
  store i64 %125, i64* %12, align 8
  %126 = icmp ne i64 %125, -1
  br i1 %126, label %127, label %131

127:                                              ; preds = %116
  %128 = load i64, i64* %12, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %9, align 8
  br label %190

131:                                              ; preds = %116
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @UNICODE_CONVERTABLE(i8 zeroext %134, i8 zeroext %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %9, align 8
  store i8 %143, i8* %144, align 1
  br label %189

146:                                              ; preds = %131
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %9, align 8
  store i8 58, i8* %147, align 1
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl i32 %152, 8
  %154 = load i8*, i8** %7, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %153, %157
  store i32 %158, i32* %11, align 4
  %159 = load i8*, i8** @fat_uni2esc, align 8
  %160 = load i32, i32* %11, align 4
  %161 = and i32 %160, 63
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  store i8 %164, i8* %166, align 1
  %167 = load i32, i32* %11, align 4
  %168 = ashr i32 %167, 6
  store i32 %168, i32* %11, align 4
  %169 = load i8*, i8** @fat_uni2esc, align 8
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %170, 63
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  store i8 %174, i8* %176, align 1
  %177 = load i32, i32* %11, align 4
  %178 = ashr i32 %177, 6
  store i32 %178, i32* %11, align 4
  %179 = load i8*, i8** @fat_uni2esc, align 8
  %180 = load i32, i32* %11, align 4
  %181 = and i32 %180, 63
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %9, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  store i8 %184, i8* %186, align 1
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  store i8* %188, i8** %9, align 8
  br label %189

189:                                              ; preds = %146, %140
  br label %190

190:                                              ; preds = %189, %127
  br label %191

191:                                              ; preds = %190
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 2
  store i8* %193, i8** %7, align 8
  br label %90

194:                                              ; preds = %114
  %195 = load i8*, i8** %9, align 8
  store i8 0, i8* %195, align 1
  %196 = load i8*, i8** %8, align 8
  ret i8* %196
}

declare dso_local i64 @mbslen(i32) #1

declare dso_local i32 @BYTES_TO_WCHAR(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @UNICODE_CONVERTABLE(i8 zeroext, i8 zeroext) #1

declare dso_local i8* @qalloc(i32*, i32) #1

declare dso_local i8* @alloc(i32) #1

declare dso_local i64 @wctombs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
