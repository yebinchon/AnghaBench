; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/fido_id/extr_fido_id_desc.c_is_fido_security_token_desc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/fido_id/extr_fido_id_desc.c_is_fido_security_token_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HID_RPTDESC_FIRST_BYTE_LONG_ITEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HID_RPTDESC_TYPE_GLOBAL = common dso_local global i32 0, align 4
@HID_RPTDESC_TAG_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_RPTDESC_TYPE_LOCAL = common dso_local global i32 0, align 4
@HID_RPTDESC_TAG_USAGE = common dso_local global i32 0, align 4
@FIDO_FULL_USAGE_CTAPHID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_fido_security_token_desc(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %145, %33, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %146

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HID_RPTDESC_FIRST_BYTE_LONG_ITEM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  %28 = load i64, i64* %5, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %147

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %14

43:                                               ; preds = %18
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 2
  %54 = and i32 %53, 3
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 3
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %10, align 4
  br label %65

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 4, %64 ]
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* %5, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %147

78:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %85, %86
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %13, align 8
  %91 = mul i64 8, %90
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %89, %92
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %83
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %79

99:                                               ; preds = %79
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @HID_RPTDESC_TYPE_GLOBAL, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @HID_RPTDESC_TAG_USAGE_PAGE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i64, i64* %11, align 8
  %112 = icmp ugt i64 %111, 2
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %147

116:                                              ; preds = %110
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 65535
  %119 = shl i32 %118, 16
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %106, %99
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @HID_RPTDESC_TYPE_LOCAL, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @HID_RPTDESC_TAG_USAGE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i64, i64* %11, align 8
  %130 = icmp eq i64 %129, 4
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %6, align 4
  br label %139

133:                                              ; preds = %128
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, -65536
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, 65535
  %138 = or i32 %135, %137
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %133, %131
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @FIDO_FULL_USAGE_CTAPHID, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 1, i32* %3, align 4
  br label %147

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %124, %120
  br label %14

146:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %143, %113, %75, %30
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
