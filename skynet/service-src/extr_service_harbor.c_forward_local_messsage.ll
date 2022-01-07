; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_forward_local_messsage.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_forward_local_messsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, i64 }
%struct.remote_message_header = type { i32, i32, i64 }

@HEADER_COOKIE_LENGTH = common dso_local global i32 0, align 4
@HANDLE_REMOTE_SHIFT = common dso_local global i32 0, align 4
@HANDLE_MASK = common dso_local global i32 0, align 4
@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@PTYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unknown destination :%x from :%x type(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor*, i8*, i32)* @forward_local_messsage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forward_local_messsage(%struct.harbor* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.harbor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.remote_message_header, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.harbor* %0, %struct.harbor** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @HEADER_COOKIE_LENGTH, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i8*, i8** %7, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = call i32 @message_to_header(i32* %19, %struct.remote_message_header* %8)
  %21 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @HANDLE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.harbor*, %struct.harbor** %4, align 8
  %30 = getelementptr inbounds %struct.harbor, %struct.harbor* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %28, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.harbor*, %struct.harbor** %4, align 8
  %37 = getelementptr inbounds %struct.harbor, %struct.harbor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %8, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @HEADER_COOKIE_LENGTH, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @skynet_send(i32 %38, i32 %40, i32 %41, i32 %44, i32 %47, i8* %48, i32 %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %3
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @PTYPE_ERROR, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.harbor*, %struct.harbor** %4, align 8
  %60 = getelementptr inbounds %struct.harbor, %struct.harbor* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PTYPE_ERROR, align 4
  %66 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %8, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @skynet_send(i32 %61, i32 %62, i32 %64, i32 %65, i32 %68, i8* null, i32 0)
  br label %70

70:                                               ; preds = %58, %54
  %71 = load %struct.harbor*, %struct.harbor** %4, align 8
  %72 = getelementptr inbounds %struct.harbor, %struct.harbor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @skynet_error(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %3
  ret void
}

declare dso_local i32 @message_to_header(i32*, %struct.remote_message_header*) #1

declare dso_local i32 @skynet_send(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @skynet_error(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
