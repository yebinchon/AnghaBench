; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_init.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_state*)* @sha512_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_init(%struct.hash_state* %0) #0 {
  %2 = alloca %struct.hash_state*, align 8
  store %struct.hash_state* %0, %struct.hash_state** %2, align 8
  %3 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %4 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %7 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = call i8* @CONST64(i32 -205731576)
  %10 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %11 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  store i8* %9, i8** %14, align 8
  %15 = call i8* @CONST64(i32 -2067093701)
  %16 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %17 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* %15, i8** %20, align 8
  %21 = call i8* @CONST64(i32 -23791573)
  %22 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %23 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  store i8* %21, i8** %26, align 8
  %27 = call i8* @CONST64(i32 1595750129)
  %28 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %29 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  store i8* %27, i8** %32, align 8
  %33 = call i8* @CONST64(i32 -1377402159)
  %34 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %35 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 4
  store i8* %33, i8** %38, align 8
  %39 = call i8* @CONST64(i32 725511199)
  %40 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %41 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 5
  store i8* %39, i8** %44, align 8
  %45 = call i8* @CONST64(i32 -79577749)
  %46 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %47 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 6
  store i8* %45, i8** %50, align 8
  %51 = call i8* @CONST64(i32 327033209)
  %52 = load %struct.hash_state*, %struct.hash_state** %2, align 8
  %53 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 7
  store i8* %51, i8** %56, align 8
  ret void
}

declare dso_local i8* @CONST64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
