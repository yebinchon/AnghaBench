; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx_msr.c_vmx_set_ctlreg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx_msr.c_vmx_set_ctlreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vmx_set_ctlreg: cap_field: %d bit: %d must be zero\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"vmx_set_ctlreg: cap_field: %d bit: %d must be one\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"vmx_set_ctlreg: cap_field: %d bit: %d unspecified don't care\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmx_set_ctlreg(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = xor i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %17, %18
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %127

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @hv_vmx_read_capability(i32 %24, i32* %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %127

29:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %123, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %126

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @vmx_ctl_allows_one_setting(i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @vmx_ctl_allows_zero_setting(i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %5, align 4
  br label %127

57:                                               ; preds = %45
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %122

64:                                               ; preds = %42, %33
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %5, align 4
  br label %127

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 1, %83
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %121

88:                                               ; preds = %67, %64
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = shl i32 1, %95
  %97 = xor i32 %96, -1
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %120

101:                                              ; preds = %88
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %10, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = shl i32 1, %108
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %119

113:                                              ; preds = %101
  %114 = load i32, i32* @stderr, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @fprintf(i32 %114, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %5, align 4
  br label %127

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %94
  br label %121

121:                                              ; preds = %120, %82
  br label %122

122:                                              ; preds = %121, %57
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %30

126:                                              ; preds = %30
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %113, %76, %51, %27, %21
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @hv_vmx_read_capability(i32, i32*) #1

declare dso_local i32 @vmx_ctl_allows_one_setting(i32, i32) #1

declare dso_local i32 @vmx_ctl_allows_zero_setting(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
