; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_cmp_entity.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_cmp_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_entity_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_entity(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xml_entity_s*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.xml_entity_s*
  store %struct.xml_entity_s* %8, %struct.xml_entity_s** %5, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.xml_entity_s*, %struct.xml_entity_s** %5, align 8
  %12 = getelementptr inbounds %struct.xml_entity_s, %struct.xml_entity_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xml_entity_s*, %struct.xml_entity_s** %5, align 8
  %15 = getelementptr inbounds %struct.xml_entity_s, %struct.xml_entity_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = call i32 @strncmp(i8* %10, i32 %13, i32 %17)
  ret i32 %18
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
