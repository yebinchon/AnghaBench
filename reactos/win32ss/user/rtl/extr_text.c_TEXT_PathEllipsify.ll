; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_PathEllipsify.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_PathEllipsify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ELLIPSISW = common dso_local global i8* null, align 8
@BACK_SLASH = common dso_local global i32 0, align 4
@FORWARD_SLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32*, i32, %struct.TYPE_8__*, i8*, %struct.TYPE_7__*)* @TEXT_PathEllipsify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TEXT_PathEllipsify(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, %struct.TYPE_8__* %5, i8* %6, %struct.TYPE_7__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %16, align 8
  %23 = load i8*, i8** @ELLIPSISW, align 8
  %24 = call i32 @strlenW(i8* %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %8
  br label %186

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = sub i32 %33, 1
  store i32 %34, i32* %17, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %17, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %17, align 4
  %45 = sub i32 %43, %44
  %46 = sub i32 %45, 1
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i8*, i8** %10, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @BACK_SLASH, align 4
  %56 = call i8* @strrchrW(i8* %54, i32 %55)
  store i8* %56, i8** %20, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @FORWARD_SLASH, align 4
  %59 = call i8* @strrchrW(i8* %57, i32 %58)
  store i8* %59, i8** %21, align 8
  %60 = load i8*, i8** %20, align 8
  %61 = load i8*, i8** %21, align 8
  %62 = icmp ugt i8* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i8*, i8** %20, align 8
  br label %67

65:                                               ; preds = %48
  %66 = load i8*, i8** %21, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i8* [ %64, %63 ], [ %66, %65 ]
  store i8* %68, i8** %22, align 8
  %69 = load i8*, i8** %22, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %22, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = load i8*, i8** %22, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sub nsw i64 %76, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %18, align 4
  %84 = load i8*, i8** %22, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8*, i8** %22, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memmove(i8* %87, i8* %88, i32 %92)
  %94 = load i8*, i8** %22, align 8
  %95 = load i8*, i8** @ELLIPSISW, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memcpy(i8* %94, i8* %95, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %127, %73
  %105 = load i32, i32* %9, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add i32 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %113 = call i32 @GetTextExtentExPointW(i32 %105, i8* %106, i32 %110, i32 %111, i32* null, i32* null, %struct.TYPE_8__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  br label %146

116:                                              ; preds = %104
  %117 = load i8*, i8** %22, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp eq i8* %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120, %116
  br label %146

127:                                              ; preds = %120
  %128 = load i8*, i8** %22, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  %130 = load i8*, i8** %22, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 1
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memmove(i8* %129, i8* %130, i32 %134)
  %136 = load i8*, i8** %22, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %22, align 8
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %19, align 4
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @assert(i32 %141)
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %144, -1
  store i32 %145, i32* %143, align 4
  br label %104

146:                                              ; preds = %126, %115
  %147 = load i8*, i8** %22, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %17, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, %166
  store i32 %169, i32* %167, align 4
  %170 = load i8*, i8** %15, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %186

172:                                              ; preds = %146
  %173 = load i8*, i8** %15, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  %178 = mul i64 %177, 1
  %179 = trunc i64 %178 to i32
  %180 = call i32 @memcpy(i8* %173, i8* %174, i32 %179)
  %181 = load i8*, i8** %15, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  store i8 0, i8* %185, align 1
  br label %186

186:                                              ; preds = %27, %172, %146
  ret void
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @strrchrW(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @GetTextExtentExPointW(i32, i8*, i32, i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
