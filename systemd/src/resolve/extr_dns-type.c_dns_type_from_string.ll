; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_dns-type.c_dns_type_from_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_dns-type.c_dns_type_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_type_name = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@_DNS_TYPE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_type_from_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dns_type_name*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = call %struct.dns_type_name* @lookup_dns_type(i8* %8, i32 %10)
  store %struct.dns_type_name* %11, %struct.dns_type_name** %4, align 8
  %12 = load %struct.dns_type_name*, %struct.dns_type_name** %4, align 8
  %13 = icmp ne %struct.dns_type_name* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.dns_type_name*, %struct.dns_type_name** %4, align 8
  %16 = getelementptr inbounds %struct.dns_type_name, %struct.dns_type_name* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @startswith_no_case(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @safe_atou(i8* %24, i32* %5)
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UINT16_MAX, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* @_DNS_TYPE_INVALID, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %31, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.dns_type_name* @lookup_dns_type(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @startswith_no_case(i8*, i8*) #1

declare dso_local i64 @safe_atou(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
