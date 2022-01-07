; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_print_frame.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_print_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pagesize = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Frame %d:   (offsets 0x%x..0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Page number\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"DB size, or 0 for non-commit\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Salt-1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Salt-2\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Checksum-1\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Checksum-2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_frame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sub nsw i32 %5, 1
  %7 = load i32, i32* @pagesize, align 4
  %8 = add nsw i32 %7, 24
  %9 = mul nsw i32 %6, %8
  %10 = add nsw i32 32, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @stdout, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @pagesize, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 24
  %18 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @pagesize, align 4
  %21 = add nsw i32 %20, 24
  %22 = call i8* @getContent(i32 %19, i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @print_decode_line(i8* %23, i32 0, i32 4, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @print_decode_line(i8* %25, i32 4, i32 4, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @print_decode_line(i8* %27, i32 8, i32 4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @print_decode_line(i8* %29, i32 12, i32 4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @print_decode_line(i8* %31, i32 16, i32 4, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @print_decode_line(i8* %33, i32 20, i32 4, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 24
  %37 = load i32, i32* @pagesize, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 24
  %40 = call i32 @print_byte_range(i32 %36, i32 %37, i8* %39, i32 0)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @free(i8* %41)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i8* @getContent(i32, i32) #1

declare dso_local i32 @print_decode_line(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @print_byte_range(i32, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
