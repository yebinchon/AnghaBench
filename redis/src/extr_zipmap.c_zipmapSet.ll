; ModuleID = '/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapSet.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIPMAP_BIGLEN = common dso_local global i8 0, align 1
@ZIPMAP_VALUE_MAX_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zipmapSet(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @zipmapRequiredLength(i32 %20, i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32*, i32** %12, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %6
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @zipmapLookupRaw(i8* %29, i8* %30, i32 %31, i32* %13)
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add i32 %37, %38
  %40 = call i8* @zipmapResize(i8* %36, i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  store i8* %45, i8** %19, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %16, align 4
  %48 = add i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @ZIPMAP_BIGLEN, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %35
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = add i8 %59, 1
  store i8 %60, i8* %58, align 1
  br label %61

61:                                               ; preds = %56, %35
  br label %113

62:                                               ; preds = %28
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8*, i8** %19, align 8
  %69 = call i32 @zipmapRawEntryLength(i8* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  %74 = load i8*, i8** %19, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = add i32 %83, %84
  %86 = call i8* @zipmapResize(i8* %80, i32 %85)
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8* %90, i8** %19, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i32, i32* %16, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8*, i8** %19, align 8
  %96 = load i32, i32* %15, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add i32 %100, %101
  %103 = add i32 %102, 1
  %104 = sub i32 %99, %103
  %105 = call i32 @memmove(i8* %94, i8* %98, i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %15, align 4
  %108 = sub i32 %106, %107
  %109 = load i32, i32* %16, align 4
  %110 = add i32 %108, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %73, %67
  br label %113

113:                                              ; preds = %112, %61
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @ZIPMAP_VALUE_MAX_FREE, align 4
  %119 = icmp uge i32 %117, %118
  br i1 %119, label %120, label %152

120:                                              ; preds = %113
  %121 = load i8*, i8** %19, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %14, align 4
  %127 = load i8*, i8** %19, align 8
  %128 = load i32, i32* %16, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8*, i8** %19, align 8
  %132 = load i32, i32* %15, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add i32 %136, %137
  %139 = add i32 %138, 1
  %140 = sub i32 %135, %139
  %141 = call i32 @memmove(i8* %130, i8* %134, i32 %140)
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sub i32 %143, %142
  store i32 %144, i32* %13, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i8* @zipmapResize(i8* %145, i32 %146)
  store i8* %147, i8** %7, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %14, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  store i8* %151, i8** %19, align 8
  store i32 0, i32* %18, align 4
  br label %154

152:                                              ; preds = %113
  %153 = load i32, i32* %17, align 4
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %152, %120
  %155 = load i8*, i8** %19, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @zipmapEncodeLength(i8* %155, i32 %156)
  %158 = load i8*, i8** %19, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %19, align 8
  %161 = load i8*, i8** %19, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @memcpy(i8* %161, i8* %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i8*, i8** %19, align 8
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %19, align 8
  %169 = load i8*, i8** %19, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @zipmapEncodeLength(i8* %169, i32 %170)
  %172 = load i8*, i8** %19, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %19, align 8
  %175 = load i32, i32* %18, align 4
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %19, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %19, align 8
  store i8 %176, i8* %177, align 1
  %179 = load i8*, i8** %19, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @memcpy(i8* %179, i8* %180, i32 %181)
  %183 = load i8*, i8** %7, align 8
  ret i8* %183
}

declare dso_local i32 @zipmapRequiredLength(i32, i32) #1

declare dso_local i8* @zipmapLookupRaw(i8*, i8*, i32, i32*) #1

declare dso_local i8* @zipmapResize(i8*, i32) #1

declare dso_local i32 @zipmapRawEntryLength(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @zipmapEncodeLength(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
