; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_read_auth_file.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_read_auth_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binlog_enabled = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DC_SERIALIZED_MAGIC = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_auth_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i64, i64* @binlog_enabled, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %99

12:                                               ; preds = %0
  %13 = call i32 (...) @get_auth_key_filename()
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i32 %13, i32 %16, i32 384)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 (...) @empty_auth_file()
  br label %99

22:                                               ; preds = %12
  %23 = load i32, i32* %1, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = call i32 (i32, ...) @read(i32 %27, i32* %3, i32 4)
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @DC_SERIALIZED_MAGIC, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %22
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @close(i32 %35)
  %37 = call i32 (...) @empty_auth_file()
  br label %99

38:                                               ; preds = %30
  %39 = load i32, i32* %1, align 4
  %40 = call i32 (i32, ...) @read(i32 %39, i32* %2, i32 4)
  %41 = icmp eq i32 %40, 4
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = icmp ugt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 (i32, ...) @read(i32 %48, i32* %4, i32 4)
  %50 = icmp eq i32 %49, 4
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %71, %38
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i32, ...) @read(i32 %58, i32* %6, i32 4)
  %60 = icmp eq i32 %59, 4
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @read_dc(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load i32, i32* @TLS, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @bl_do_set_working_dc(i32 %75, i32 %76)
  %78 = load i32, i32* %1, align 4
  %79 = call i32 (i32, ...) @read(i32 %78, i32* %7, i32 4)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* @TLS, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @TGL_MK_USER(i32 %93)
  %95 = call i32 @bl_do_set_our_id(i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @close(i32 %97)
  br label %99

99:                                               ; preds = %96, %34, %20, %11
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @get_auth_key_filename(...) #1

declare dso_local i32 @empty_auth_file(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read_dc(i32, i32, i32) #1

declare dso_local i32 @bl_do_set_working_dc(i32, i32) #1

declare dso_local i32 @bl_do_set_our_id(i32, i32) #1

declare dso_local i32 @TGL_MK_USER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
