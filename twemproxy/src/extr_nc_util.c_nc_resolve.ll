; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_util.c_nc_resolve.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_util.c_nc_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i8* }
%struct.sockinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nc_resolve(%struct.string* %0, i32 %1, %struct.sockinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockinfo*, align 8
  store %struct.string* %0, %struct.string** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockinfo* %2, %struct.sockinfo** %7, align 8
  %8 = load %struct.string*, %struct.string** %5, align 8
  %9 = icmp ne %struct.string* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.string*, %struct.string** %5, align 8
  %12 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.string*, %struct.string** %5, align 8
  %20 = load %struct.sockinfo*, %struct.sockinfo** %7, align 8
  %21 = call i32 @nc_resolve_unix(%struct.string* %19, %struct.sockinfo* %20)
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %10, %3
  %23 = load %struct.string*, %struct.string** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sockinfo*, %struct.sockinfo** %7, align 8
  %26 = call i32 @nc_resolve_inet(%struct.string* %23, i32 %24, %struct.sockinfo* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @nc_resolve_unix(%struct.string*, %struct.sockinfo*) #1

declare dso_local i32 @nc_resolve_inet(%struct.string*, i32, %struct.sockinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
