; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_security_info_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_security_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.security_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.security_info*)* @security_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @security_info_free(%struct.security_info* %0) #0 {
  %2 = alloca %struct.security_info*, align 8
  store %struct.security_info* %0, %struct.security_info** %2, align 8
  %3 = load %struct.security_info*, %struct.security_info** %2, align 8
  %4 = icmp ne %struct.security_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %67

6:                                                ; preds = %1
  %7 = load %struct.security_info*, %struct.security_info** %2, align 8
  %8 = getelementptr inbounds %struct.security_info, %struct.security_info* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @free(i32 %9)
  %11 = load %struct.security_info*, %struct.security_info** %2, align 8
  %12 = getelementptr inbounds %struct.security_info, %struct.security_info* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @free(i32 %13)
  %15 = load %struct.security_info*, %struct.security_info** %2, align 8
  %16 = getelementptr inbounds %struct.security_info, %struct.security_info* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free(i32 %17)
  %19 = load %struct.security_info*, %struct.security_info** %2, align 8
  %20 = getelementptr inbounds %struct.security_info, %struct.security_info* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @free(i32 %21)
  %23 = load %struct.security_info*, %struct.security_info** %2, align 8
  %24 = getelementptr inbounds %struct.security_info, %struct.security_info* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free(i32 %25)
  %27 = load %struct.security_info*, %struct.security_info** %2, align 8
  %28 = getelementptr inbounds %struct.security_info, %struct.security_info* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @free(i32 %29)
  %31 = load %struct.security_info*, %struct.security_info** %2, align 8
  %32 = getelementptr inbounds %struct.security_info, %struct.security_info* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free(i32 %33)
  %35 = load %struct.security_info*, %struct.security_info** %2, align 8
  %36 = getelementptr inbounds %struct.security_info, %struct.security_info* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @free(i32 %37)
  %39 = load %struct.security_info*, %struct.security_info** %2, align 8
  %40 = getelementptr inbounds %struct.security_info, %struct.security_info* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @free(i32 %41)
  %43 = load %struct.security_info*, %struct.security_info** %2, align 8
  %44 = getelementptr inbounds %struct.security_info, %struct.security_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @free(i32 %45)
  %47 = load %struct.security_info*, %struct.security_info** %2, align 8
  %48 = getelementptr inbounds %struct.security_info, %struct.security_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @free(i32 %49)
  %51 = load %struct.security_info*, %struct.security_info** %2, align 8
  %52 = getelementptr inbounds %struct.security_info, %struct.security_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @free(i32 %53)
  %55 = load %struct.security_info*, %struct.security_info** %2, align 8
  %56 = getelementptr inbounds %struct.security_info, %struct.security_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strv_free(i32 %57)
  %59 = load %struct.security_info*, %struct.security_info** %2, align 8
  %60 = getelementptr inbounds %struct.security_info, %struct.security_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strv_free(i32 %61)
  %63 = load %struct.security_info*, %struct.security_info** %2, align 8
  %64 = getelementptr inbounds %struct.security_info, %struct.security_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_free_free(i32 %65)
  br label %67

67:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strv_free(i32) #1

declare dso_local i32 @set_free_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
