; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_uri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"(%p %p %x): beginning to canonicalize URI %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"(%p %p %x): Could not compute the canonicalized length of %s.\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"(%p %p %x): Unable to canonicalize the scheme of the URI.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"(%p %p %x): Unable to canonicalize the heirpart of the URI\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"(%p %p %x): Unable to canonicalize query string of the URI.\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"(%p %p %x): Unable to canonicalize fragment of the URI.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"(%p %p %x): finished canonicalizing the URI. uri=%s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32)* @canonicalize_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_uri(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @debugstr_w(i8* %21)
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %16, %struct.TYPE_19__* %17, i32 %18, i32 %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @compute_canonicalized_length(%struct.TYPE_18__* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @debugstr_w(i8* %35)
  %37 = call i32 (i8*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, ...) @ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %30, %struct.TYPE_19__* %31, i32 %32, i32 %36)
  %38 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %38, i32* %4, align 4
  br label %165

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i8* @heap_alloc(i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %53, i32* %4, align 4
  br label %165

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @canonicalize_scheme(%struct.TYPE_18__* %58, %struct.TYPE_19__* %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, ...) @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %65, %struct.TYPE_19__* %66, i32 %67)
  %69 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %69, i32* %4, align 4
  br label %165

70:                                               ; preds = %54
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32 @canonicalize_hierpart(%struct.TYPE_18__* %76, %struct.TYPE_19__* %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %70
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, ...) @ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_18__* %83, %struct.TYPE_19__* %84, i32 %85)
  %87 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %87, i32* %4, align 4
  br label %165

88:                                               ; preds = %70
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @canonicalize_query(%struct.TYPE_18__* %89, %struct.TYPE_19__* %90, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i8*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, ...) @ERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_18__* %96, %struct.TYPE_19__* %97, i32 %98)
  %100 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %100, i32* %4, align 4
  br label %165

101:                                              ; preds = %88
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i32 @canonicalize_fragment(%struct.TYPE_18__* %102, %struct.TYPE_19__* %103, i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %101
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i8*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, ...) @ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_18__* %109, %struct.TYPE_19__* %110, i32 %111)
  %113 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %113, i32* %4, align 4
  br label %165

114:                                              ; preds = %101
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %114
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 1
  %132 = trunc i64 %131 to i32
  %133 = call i8* @heap_realloc(i8* %125, i32 %132)
  store i8* %133, i8** %9, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %122
  %137 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %137, i32* %4, align 4
  br label %165

138:                                              ; preds = %122
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %138, %114
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  store i8 0, i8* %155, align 1
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @debugstr_w(i8* %161)
  %163 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_18__* %156, %struct.TYPE_19__* %157, i32 %158, i32 %162)
  %164 = load i32, i32* @S_OK, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %147, %136, %108, %95, %82, %64, %52, %29
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @compute_canonicalized_length(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ERR(i8*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, ...) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @canonicalize_scheme(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @canonicalize_hierpart(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @canonicalize_query(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @canonicalize_fragment(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i8* @heap_realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
