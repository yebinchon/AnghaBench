; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_write_secret_chat.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_write_secret_chat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_secret_chat = type { i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TGL_PEER_ENCR_CHAT = common dso_local global i64 0, align 8
@sc_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_secret_chat(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tgl_secret_chat*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.tgl_secret_chat*
  store %struct.tgl_secret_chat* %12, %struct.tgl_secret_chat** %5, align 8
  %13 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %14 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @tgl_get_peer_type(i32 %15)
  %17 = load i64, i64* @TGL_PEER_ENCR_CHAT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %157

20:                                               ; preds = %2
  %21 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %22 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @sc_ok, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %157

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %38 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @tgl_get_peer_id(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @write(i32 %41, i32* %8, i32 4)
  %43 = icmp eq i32 %42, 4
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %47 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @strlen(i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @write(i32 %50, i32* %9, i32 4)
  %52 = icmp eq i32 %51, 4
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %57 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @write(i32 %55, i32* %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %67 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %66, i32 0, i32 2
  %68 = call i32 @write(i32 %65, i32* %67, i32 4)
  %69 = icmp eq i32 %68, 4
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %74 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %73, i32 0, i32 3
  %75 = call i32 @write(i32 %72, i32* %74, i32 4)
  %76 = icmp eq i32 %75, 4
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %81 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %80, i32 0, i32 4
  %82 = call i32 @write(i32 %79, i32* %81, i32 4)
  %83 = icmp eq i32 %82, 4
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %88 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %87, i32 0, i32 5
  %89 = call i32 @write(i32 %86, i32* %88, i32 4)
  %90 = icmp eq i32 %89, 4
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %95 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %94, i32 0, i32 6
  %96 = call i32 @write(i32 %93, i32* %95, i32 4)
  %97 = icmp eq i32 %96, 4
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %102 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %101, i32 0, i32 7
  %103 = call i32 @write(i32 %100, i32* %102, i32 8)
  %104 = icmp eq i32 %103, 8
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %109 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %108, i32 0, i32 0
  %110 = bitcast i64* %109 to i32*
  %111 = call i32 @write(i32 %107, i32* %110, i32 4)
  %112 = icmp eq i32 %111, 4
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %117 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %116, i32 0, i32 8
  %118 = call i32 @write(i32 %115, i32* %117, i32 8)
  %119 = icmp eq i32 %118, 8
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %124 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %123, i32 0, i32 9
  %125 = call i32 @write(i32 %122, i32* %124, i32 256)
  %126 = icmp eq i32 %125, 256
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %131 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %130, i32 0, i32 10
  %132 = call i32 @write(i32 %129, i32* %131, i32 20)
  %133 = icmp eq i32 %132, 20
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %138 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %137, i32 0, i32 11
  %139 = call i32 @write(i32 %136, i32* %138, i32 4)
  %140 = icmp eq i32 %139, 4
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %145 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %144, i32 0, i32 12
  %146 = call i32 @write(i32 %143, i32* %145, i32 4)
  %147 = icmp eq i32 %146, 4
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %152 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %151, i32 0, i32 13
  %153 = call i32 @write(i32 %150, i32* %152, i32 4)
  %154 = icmp eq i32 %153, 4
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  br label %157

157:                                              ; preds = %27, %26, %19
  ret void
}

declare dso_local i64 @tgl_get_peer_type(i32) #1

declare dso_local i32 @tgl_get_peer_id(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
