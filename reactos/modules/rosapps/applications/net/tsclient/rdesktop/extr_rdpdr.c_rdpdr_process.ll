; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_process.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"RDPDR packet type %c%c%c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*)* @rdpdr_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdpdr_process(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @in_uint8p(%struct.TYPE_7__* %7, i8* %8, i32 4)
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 114
  br i1 %14, label %15, label %101

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 68
  br i1 %20, label %21, label %101

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 82
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 73
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 @rdpdr_process_irp(i32* %34, %struct.TYPE_7__* %35)
  br label %144

37:                                               ; preds = %27, %21
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 110
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 73
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @rdpdr_send_connect(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @rdpdr_send_name(i32* %52)
  br label %144

54:                                               ; preds = %43, %37
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 67
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 67
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @rdpdr_send_clientcapabilty(i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @rdpdr_send_available(i32* %69)
  br label %144

71:                                               ; preds = %60, %54
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 114
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 100
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @in_uint32(%struct.TYPE_7__* %84, i32 %85)
  br label %144

87:                                               ; preds = %77, %71
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 80
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 83
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %144

100:                                              ; preds = %93, %87
  br label %101

101:                                              ; preds = %100, %15, %2
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 82
  br i1 %106, label %107, label %130

107:                                              ; preds = %101
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 80
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 67
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 3
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 80
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = call i32 @printercache_process(i32* %126, %struct.TYPE_7__* %127)
  br label %144

129:                                              ; preds = %119, %113
  br label %130

130:                                              ; preds = %129, %107, %101
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = load i8, i8* %138, align 1
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @unimpl(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8 signext %133, i8 signext %136, i8 signext %139, i8 signext %142)
  br label %144

144:                                              ; preds = %130, %125, %99, %83, %66, %49, %33
  ret void
}

declare dso_local i32 @in_uint8p(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @rdpdr_process_irp(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @rdpdr_send_connect(i32*) #1

declare dso_local i32 @rdpdr_send_name(i32*) #1

declare dso_local i32 @rdpdr_send_clientcapabilty(i32*) #1

declare dso_local i32 @rdpdr_send_available(i32*) #1

declare dso_local i32 @in_uint32(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @printercache_process(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @unimpl(i8*, i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
