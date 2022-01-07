; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_append_field_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_append_field_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8, i8*, i8**)* @message_append_field_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_append_field_string(i32* %0, i32 %1, i8 signext %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %121

21:                                               ; preds = %5
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @UINT32_MAX, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %121

30:                                               ; preds = %21
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @BUS_MESSAGE_IS_GVARIANT(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add i64 8, %36
  %38 = add i64 %37, 1
  %39 = add i64 %38, 1
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @message_extend_fields(i32* %35, i32 8, i32 %41, i32 1)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %121

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 8, %58
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 8, %62
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8, i8* %9, align 1
  %67 = load i8*, i8** %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add i64 8, %68
  %70 = add i64 %69, 2
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 %66, i8* %71, align 1
  %72 = load i8**, i8*** %11, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %48
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = load i8**, i8*** %11, align 8
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %48
  br label %120

79:                                               ; preds = %30
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add i64 8, %81
  %83 = add i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = call i8* @message_extend_fields(i32* %80, i32 8, i32 %84, i32 0)
  store i8* %85, i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %121

91:                                               ; preds = %79
  %92 = load i32, i32* %8, align 4
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %93, i8* %95, align 1
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 1, i8* %97, align 1
  %98 = load i8, i8* %9, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  store i8 %98, i8* %100, align 1
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  store i8 0, i8* %102, align 1
  %103 = load i64, i64* %12, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = bitcast i8* %104 to i64*
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  store i64 %103, i64* %106, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 1
  %112 = call i32 @memcpy(i8* %108, i8* %109, i64 %111)
  %113 = load i8**, i8*** %11, align 8
  %114 = icmp ne i8** %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %91
  %116 = load i8*, i8** %13, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  %118 = load i8**, i8*** %11, align 8
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %91
  br label %120

120:                                              ; preds = %119, %78
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %88, %45, %27, %18
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @BUS_MESSAGE_IS_GVARIANT(i32*) #1

declare dso_local i8* @message_extend_fields(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
